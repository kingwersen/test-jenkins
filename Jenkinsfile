pipeline {
    agent {
        docker 'kingwersen/my-ubuntu'
    }

    stages {
        /*
        stage('Clone') {
            steps {
                git(
                    url: 'https://github.com/kingwersen/test-jenkins.git',
                    branch: 'master'
                )
            }
        }
        */
        
        stage('Build') {
            steps {
                //cmakeBuild(
                //    installation: 'InSearchPath',
                //    buildDir: 'build',
                //    cleanBuild: false,
                //    steps: [[ withCmake: true ]]
                //)
                
                // Configure
                cmakeBuild(
                    installation: 'InSearchPath',
                    buildDir: 'build',
                    cleanBuild: false
                )
                
                // Build
                sh 'cmake --build build'
            }
        }
        
        stage('Test') {
            steps {
                sh 'ls build'
                sh './build/main'
                sh 'printenv'
                powershell './test.ps1 -Foo Bar'
            }
        }
    }
}
