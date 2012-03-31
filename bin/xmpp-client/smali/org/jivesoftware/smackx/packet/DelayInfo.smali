.class public Lorg/jivesoftware/smackx/packet/DelayInfo;
.super Lorg/jivesoftware/smackx/packet/DelayInformation;
.source "DelayInfo.java"


# instance fields
.field wrappedInfo:Lorg/jivesoftware/smackx/packet/DelayInformation;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/packet/DelayInformation;)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 41
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DelayInformation;->getStamp()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/packet/DelayInformation;-><init>(Ljava/util/Date;)V

    .line 42
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DelayInfo;->wrappedInfo:Lorg/jivesoftware/smackx/packet/DelayInformation;

    .line 43
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "delay"

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DelayInfo;->wrappedInfo:Lorg/jivesoftware/smackx/packet/DelayInformation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DelayInformation;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "urn:xmpp:delay"

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DelayInfo;->wrappedInfo:Lorg/jivesoftware/smackx/packet/DelayInformation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DelayInformation;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DelayInfo;->wrappedInfo:Lorg/jivesoftware/smackx/packet/DelayInformation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DelayInformation;->getStamp()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1
    .parameter "from"

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DelayInfo;->wrappedInfo:Lorg/jivesoftware/smackx/packet/DelayInformation;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DelayInformation;->setFrom(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DelayInfo;->wrappedInfo:Lorg/jivesoftware/smackx/packet/DelayInformation;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DelayInformation;->setReason(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInfo;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInfo;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, " stamp=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInfo;->getStamp()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInfo;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInfo;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    const-string v1, " from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInfo;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_1
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DelayInfo;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
