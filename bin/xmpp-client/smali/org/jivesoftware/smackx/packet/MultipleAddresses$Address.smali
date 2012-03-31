.class public Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;
.super Ljava/lang/Object;
.source "MultipleAddresses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/MultipleAddresses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Address"
.end annotation


# instance fields
.field private delivered:Z

.field private description:Ljava/lang/String;

.field private jid:Ljava/lang/String;

.field private node:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->type:Ljava/lang/String;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->setJid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->setNode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->setDelivered(Z)V

    return-void
.end method

.method static synthetic access$5(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->setUri(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setDelivered(Z)V
    .locals 0
    .parameter "delivered"

    .prologue
    .line 75
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->delivered:Z

    .line 76
    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 79
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->description:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 83
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->jid:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private setNode(Ljava/lang/String;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 87
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->node:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 91
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->uri:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<address type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->jid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 100
    const-string v1, " jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->jid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->node:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 104
    const-string v1, " node=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->node:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 108
    const-string v1, " desc=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->delivered:Z

    if-eqz v1, :cond_3

    .line 112
    const-string v1, " delivered=\"true\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->uri:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 115
    const-string v1, " uri=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_4
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isDelivered()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->delivered:Z

    return v0
.end method
