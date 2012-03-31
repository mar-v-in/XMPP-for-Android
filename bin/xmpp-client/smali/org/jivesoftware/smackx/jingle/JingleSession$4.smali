.class Lorg/jivesoftware/smackx/jingle/JingleSession$4;
.super Ljava/lang/Object;
.source "JingleSession.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/listeners/JingleTransportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/JingleSession;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$4;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transportClosed(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter "cand"

    .prologue
    .line 961
    return-void
.end method

.method public transportClosedOnError(Lorg/jivesoftware/smack/XMPPException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 965
    return-void
.end method

.method public transportEstablished(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 5
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 970
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$4;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->isFullyEstablished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 973
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$4;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleSessionStateActive;->getInstance()Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->setSessionState(Lorg/jivesoftware/smackx/jingle/JingleSessionState;)V

    .line 975
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$4;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    #getter for: Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;
    invoke-static {v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->access$1(Lorg/jivesoftware/smackx/jingle/JingleSession;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 981
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$4;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getSessionState()Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    move-result-object v2

    .line 982
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/JingleSessionStatePending;->getInstance()Lorg/jivesoftware/smackx/jingle/JingleSessionState;

    move-result-object v3

    .line 981
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 984
    new-instance v1, Lorg/jivesoftware/smackx/packet/Jingle;

    .line 985
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    .line 984
    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/packet/Jingle;-><init>(Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)V

    .line 988
    .local v1, jout:Lorg/jivesoftware/smackx/packet/Jingle;
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$4;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    #getter for: Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;
    invoke-static {v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->access$1(Lorg/jivesoftware/smackx/jingle/JingleSession;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 995
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$4;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/Jingle;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addExpectedId(Ljava/lang/String;)V

    .line 996
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$4;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 999
    .end local v1           #jout:Lorg/jivesoftware/smackx/packet/Jingle;
    :cond_2
    return-void

    .line 975
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 976
    .local v0, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-ne v3, v4, :cond_0

    .line 977
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->triggerContentEstablished()V

    goto :goto_0

    .line 988
    .end local v0           #contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    .restart local v1       #jout:Lorg/jivesoftware/smackx/packet/Jingle;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 989
    .restart local v0       #contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-ne v3, v4, :cond_1

    .line 991
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getJingleContent()Lorg/jivesoftware/smackx/packet/JingleContent;

    move-result-object v3

    .line 990
    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/packet/Jingle;->addContent(Lorg/jivesoftware/smackx/packet/JingleContent;)V

    goto :goto_1
.end method
