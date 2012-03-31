.class public Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "SASLMechanism.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/sasl/SASLMechanism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field private final authenticationText:Ljava/lang/String;

.field final synthetic this$0:Lorg/jivesoftware/smack/sasl/SASLMechanism;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/sasl/SASLMechanism;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;->this$0:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;->authenticationText:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/sasl/SASLMechanism;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "authenticationText"

    .prologue
    .line 153
    iput-object p1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;->this$0:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 154
    if-eqz p2, :cond_0

    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;->authenticationText:Ljava/lang/String;

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_1
    iput-object p2, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;->authenticationText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, stanza:Ljava/lang/StringBuilder;
    const-string v1, "<response xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;->authenticationText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;->authenticationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    const-string v1, "</response>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
