.class public Lorg/jivesoftware/smack/packet/Session;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Session.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 42
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Session;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "<session xmlns=\"urn:ietf:params:xml:ns:xmpp-session\"/>"

    return-object v0
.end method
