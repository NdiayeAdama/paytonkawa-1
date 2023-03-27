pipeline {
    agent any
    environment {
        PATH = "$PATH:/Library/Frameworks/Python.framework/Versions/3.12/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Users/wejdene/Documents/flutter/bin"
    }
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '33855b67-8e21-4734-b70d-4173e40450f9', url: 'https://github.com/NdiayeAdama/paytonkawa-1.git']]])
            }
        }
         stage('clean') {
                    steps {
                        sh 'flutter clean'
                    }
        }
        stage('Build and Test') {
            steps {
                sh 'flutter pub get'
            }
        }
        stage('test') {
            steps {
                   sh 'flutter test'
                   }
                }
        stage('package') {
                steps {
                    sh 'flutter build apk --release'
                }
        }
        stage('archive') {
            steps {

                sh 'mv build/app/outputs/flutter-apk/app-release.apk apk-payetonkawa-$BUILD_NUMBER.apk'
                archiveArtifacts artifacts: 'apk-payetonkawa-.apk', followSymlinks: false

            }
         }


    }
}
