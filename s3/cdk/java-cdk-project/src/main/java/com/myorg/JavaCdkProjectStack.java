package com.myorg;

import software.constructs.Construct;
import software.amazon.awscdk.Stack;
import software.amazon.awscdk.StackProps;
import software.amazon.awscdk.services.s3.Bucket;
import software.amazon.awscdk.services.s3.BucketEncryption;
import software.amazon.awscdk.services.s3.IBucket;
// import software.amazon.awscdk.Duration;
// import software.amazon.awscdk.services.sqs.Queue;
import software.amazon.awscdk.services.ses.actions.S3;

public class JavaCdkProjectStack extends Stack {
    public JavaCdkProjectStack(final Construct scope, final String id) {
        this(scope, id, null);
    }

    public JavaCdkProjectStack(final Construct scope, final String id, final StackProps props) {
        super(scope, id, props);
        

    Bucket bucket = Bucket.Builder.create(this, "amzn-s3-demo-bucket-learn-pr")
                           .build();
                           System.out.println(bucket.getBucketName());

        // The code that defines your stack goes here

        // example resource
        // final Queue queue = Queue.Builder.create(this, "JavaCdkProjectQueue")
        //         .visibilityTimeout(Duration.seconds(300))
        //         .build();
    }
}
