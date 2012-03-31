.class Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$3;
.super Ljava/lang/Object;
.source "TransportNegotiator.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/nat/TransportResolverListener$Resolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->sendTransportCandidatesOffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$3;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public candidateAdded(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 1
    .parameter "cand"

    .prologue
    .line 899
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator$3;->this$0:Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;

    #calls: Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->sendTransportCandidateOffer(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    invoke-static {v0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;->access$10(Lorg/jivesoftware/smackx/jingle/nat/TransportNegotiator;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 900
    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 904
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 908
    return-void
.end method
