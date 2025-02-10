pipeline {
    agent any
    
    parameters {
        string(name: 'CHAR', defaultValue: 'a', description: 'האות לבדיקה')
    }

    environment {
        OUTPUT_FILE = 'output.html'
    }
    
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Alex-P-87/year3_semester1.git'
            }
        }
        
        stage('Run PowerShell Script') {
            steps {
                script {
                    def charParam = params.CHAR
                    def output = powershell(returnStdout: true, script: """
                    \$char = '${charParam}'
                    \$str = "hello this is a checking function, here we check how many letters are found like a parameter"
                    \$count = (\$str -split '').Where({\$_ -eq \$char}).Count
                    Write-Output \$count
                    """).trim()

                    writeFile file: OUTPUT_FILE, text: "<html><body><h1>Output</h1><p>letter ${charParam} found ${output}</span> times </p></body></html>"
                }
            }
        }
        
        stage('Display Parameter') {
            steps {
                script {
                    currentBuild.description = "Character parameter is ${params.CHAR}"
                }
            }
        }
        
        stage('Generate HTML Report') {
            steps {
                script {
                    def description = currentBuild.description
                    if (description.contains(params.CHAR)) {
                        echo "Parameter ${params.CHAR} exists on the web page."
                    } else {
                        error "Parameter ${params.CHAR} does not exist on the web page."
                    }
                }
            }
        }
    }
    
    post {
        always {
            archiveArtifacts artifacts: OUTPUT_FILE, fingerprint: true
            publishHTML(target: [
                allowMissing: false,
                alwaysLinkToLastBuild: true,
                keepAll: true,
                reportDir: '.',
                reportFiles: OUTPUT_FILE,
                reportName: 'PowerShell Script Output'
            ])
        }
    }
}
