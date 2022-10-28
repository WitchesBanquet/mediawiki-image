pipeline {
    agent {
        label "image-builder"
    }
    environment {
        VERSION = sh (
            returnStdout: true,
            script: "cat version.txt"
        )
        HARBOR_CREDS = credentials("harbor-novia-land-credential")
    }
    stages {
        stage (" Check Version ") {
            steps {
                echo "Version: ${VERSION}";
            }
        }
        stage(" Build Image ") {
            steps {
                container ("podman") {
                    echo "======== Build Image ========"
                    sh """
                    podman buildx build --platform linux/amd64 -t harbor.alisaqaq.moe/novia-land/mediawiki:${VERSION} -f Dockerfile ./
                    """
                }
            }
            post {
                success {
                    echo "======== Image Build Success ========"
                }
                failure {
                    echo "======== Image Build Failed ========"
                }
            }
        }
        stage(" Push Image ") {
            steps {
                container ("podman") {
                    echo "======== Push Image ========"
                    sh "podman login -u ${HARBOR_CREDS_USR} -p ${HARBOR_CREDS_PSW} harbor.alisaqaq.moe"
                    sh "podman push harbor.alisaqaq.moe/novia-land/mediawiki:${VERSION}"
                }
            }
            post {
                success {
                    echo "======== Image Push Success ========"
                }
                failure {
                    echo "======== Image Push Failed ========"
                }
            }
        }
    }
    post {
        success {
            echo "======== Pipeline Executed Successfully ========"
        }
        failure {
            echo "======== Pipeline Execution Failed ========"
        }
    }
}
