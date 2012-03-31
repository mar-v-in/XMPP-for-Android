.class public Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MonitorPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket$InternalProvider;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "monitor"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jivesoftware.com/protocol/workgroup"


# instance fields
.field private isMonitor:Z

.field private sessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "monitor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->sessionID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<makeOwner sessionID=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->sessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    const-string v2, "\"></makeOwner>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "monitor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "monitor"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "http://jivesoftware.com/protocol/workgroup"

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public isMonitor()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->isMonitor:Z

    return v0
.end method

.method public setMonitor(Z)V
    .locals 0
    .parameter "monitor"

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->isMonitor:Z

    .line 110
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionID"

    .prologue
    .line 113
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->sessionID:Ljava/lang/String;

    .line 114
    return-void
.end method
