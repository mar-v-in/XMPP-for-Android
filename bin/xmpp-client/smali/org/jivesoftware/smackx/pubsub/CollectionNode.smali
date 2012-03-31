.class public Lorg/jivesoftware/smackx/pubsub/CollectionNode;
.super Lorg/jivesoftware/smackx/pubsub/Node;
.source "CollectionNode.java"


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 0
    .parameter "connection"
    .parameter "nodeId"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/Node;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .line 11
    return-void
.end method
