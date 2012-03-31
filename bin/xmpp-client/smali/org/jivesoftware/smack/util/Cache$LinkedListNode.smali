.class Lorg/jivesoftware/smack/util/Cache$LinkedListNode;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedListNode"
.end annotation


# instance fields
.field public next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

.field public object:Ljava/lang/Object;

.field public previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

.field public timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/jivesoftware/smack/util/Cache$LinkedListNode;Lorg/jivesoftware/smack/util/Cache$LinkedListNode;)V
    .locals 0
    .parameter "object"
    .parameter
    .parameter

    .prologue
    .line 267
    .local p2, next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    .local p3, previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;,"Lorg/jivesoftware/smack/util/Cache$LinkedListNode;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->object:Ljava/lang/Object;

    .line 270
    iput-object p2, p0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 271
    iput-object p3, p0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 272
    return-void
.end method


# virtual methods
.method public remove()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object v1, v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 279
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->next:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    iput-object v1, v0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->previous:Lorg/jivesoftware/smack/util/Cache$LinkedListNode;

    .line 280
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/jivesoftware/smack/util/Cache$LinkedListNode;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
