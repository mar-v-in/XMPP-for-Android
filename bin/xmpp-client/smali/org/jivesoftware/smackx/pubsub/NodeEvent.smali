.class public abstract Lorg/jivesoftware/smackx/pubsub/NodeEvent;
.super Ljava/lang/Object;
.source "NodeEvent.java"


# instance fields
.field private final nodeId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/NodeEvent;->nodeId:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/NodeEvent;->nodeId:Ljava/lang/String;

    return-object v0
.end method
