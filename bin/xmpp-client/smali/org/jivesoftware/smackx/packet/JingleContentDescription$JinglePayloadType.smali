.class public Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;
.super Ljava/lang/Object;
.source "JingleContentDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/JingleContentDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JinglePayloadType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType$Audio;
    }
.end annotation


# static fields
.field public static final NODENAME:Ljava/lang/String; = "payload-type"


# instance fields
.field private payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;-><init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V
    .locals 0
    .parameter "payload"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 124
    return-void
.end method

.method public static getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "payload-type"

    return-object v0
.end method


# virtual methods
.method protected getChildAttributes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPayloadType()Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    return-object v0
.end method

.method public setPayload(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V
    .locals 0
    .parameter "payload"

    .prologue
    .line 146
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 147
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    if-eqz v1, :cond_4

    .line 153
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v1

    sget v2, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->INVALID_PT:I

    if-eq v1, v2, :cond_0

    .line 157
    const-string v1, " id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 160
    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getChannels()I

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    const-string v1, " channels=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->payload:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getChannels()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->getChildAttributes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 168
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;->getChildAttributes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_3
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
