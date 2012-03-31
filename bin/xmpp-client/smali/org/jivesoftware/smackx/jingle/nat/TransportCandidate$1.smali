.class Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$1;
.super Ljava/lang/Object;
.source "TransportCandidate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->check(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 666
    const/4 v0, 0x1

    .line 670
    .local v0, isUsable:Z
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$1;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->triggerCandidateChecked(Z)V

    .line 674
    return-void
.end method
