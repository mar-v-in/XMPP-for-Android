.class public Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "WorkgroupProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties$InternalProvider;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "workgroup-properties"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jivesoftware.com/protocol/workgroup"


# instance fields
.field private authRequired:Z

.field private email:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private jid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "workgroup-properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/util/ModelUtil;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jid=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    const-string v1, "></"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "workgroup-properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthRequired()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->authRequired:Z

    return v0
.end method

.method public setAuthRequired(Z)V
    .locals 0
    .parameter "authRequired"

    .prologue
    .line 115
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->authRequired:Z

    .line 116
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 119
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->email:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .parameter "fullName"

    .prologue
    .line 123
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->fullName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 127
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->jid:Ljava/lang/String;

    .line 128
    return-void
.end method
