.class Lorg/jivesoftware/smackx/jingle/JingleSession$3;
.super Ljava/lang/Object;
.source "JingleSession.java"

# interfaces
.implements Lorg/jivesoftware/smackx/jingle/listeners/JingleMediaListener;


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
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$3;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mediaClosed(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V
    .locals 0
    .parameter "cand"

    .prologue
    .line 932
    return-void
.end method

.method public mediaEstablished(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V
    .locals 5
    .parameter "pt"

    .prologue
    .line 936
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$3;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->isFullyEstablished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 937
    new-instance v1, Lorg/jivesoftware/smackx/packet/Jingle;

    .line 938
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->SESSION_ACCEPT:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    .line 937
    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/packet/Jingle;-><init>(Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)V

    .line 941
    .local v1, jout:Lorg/jivesoftware/smackx/packet/Jingle;
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$3;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    #getter for: Lorg/jivesoftware/smackx/jingle/JingleSession;->contentNegotiators:Ljava/util/List;
    invoke-static {v2}, Lorg/jivesoftware/smackx/jingle/JingleSession;->access$1(Lorg/jivesoftware/smackx/jingle/JingleSession;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 948
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$3;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/Jingle;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/jingle/JingleSession;->addExpectedId(Ljava/lang/String;)V

    .line 949
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$3;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 954
    .end local v1           #jout:Lorg/jivesoftware/smackx/packet/Jingle;
    :cond_1
    return-void

    .line 941
    .restart local v1       #jout:Lorg/jivesoftware/smackx/packet/Jingle;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;

    .line 942
    .local v0, contentNegotiator:Lorg/jivesoftware/smackx/jingle/ContentNegotiator;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getNegotiatorState()Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;->SUCCEEDED:Lorg/jivesoftware/smackx/jingle/JingleNegotiatorState;

    if-ne v3, v4, :cond_0

    .line 944
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/ContentNegotiator;->getJingleContent()Lorg/jivesoftware/smackx/packet/JingleContent;

    move-result-object v3

    .line 943
    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/packet/Jingle;->addContent(Lorg/jivesoftware/smackx/packet/JingleContent;)V

    goto :goto_0
.end method
