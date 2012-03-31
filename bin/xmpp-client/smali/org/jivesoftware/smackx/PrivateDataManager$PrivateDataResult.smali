.class Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "PrivateDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/PrivateDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivateDataResult"
.end annotation


# instance fields
.field private final privateData:Lorg/jivesoftware/smackx/packet/PrivateData;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/PrivateData;)V
    .locals 0
    .parameter "privateData"

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 134
    iput-object p1, p0, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;->privateData:Lorg/jivesoftware/smackx/packet/PrivateData;

    .line 135
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<query xmlns=\"jabber:iq:private\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;->privateData:Lorg/jivesoftware/smackx/packet/PrivateData;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;->privateData:Lorg/jivesoftware/smackx/packet/PrivateData;

    invoke-interface {v1}, Lorg/jivesoftware/smackx/packet/PrivateData;->toXML()Ljava/lang/String;

    .line 144
    :cond_0
    const-string v1, "</query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrivateData()Lorg/jivesoftware/smackx/packet/PrivateData;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataResult;->privateData:Lorg/jivesoftware/smackx/packet/PrivateData;

    return-object v0
.end method
