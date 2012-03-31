.class public interface abstract Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;
.super Ljava/lang/Object;
.source "ItemEventListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/jivesoftware/smackx/pubsub/Item;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handlePublishedItems(Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/ItemPublishEvent",
            "<TT;>;)V"
        }
    .end annotation
.end method
