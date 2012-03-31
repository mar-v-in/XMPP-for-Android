.class public interface abstract Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;
.super Ljava/lang/Object;
.source "QueueUsersListener.java"


# virtual methods
.method public abstract averageWaitTimeUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;I)V
.end method

.method public abstract oldestEntryUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Ljava/util/Date;)V
.end method

.method public abstract statusUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V
.end method

.method public abstract usersUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;",
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/QueueUser;",
            ">;)V"
        }
    .end annotation
.end method
