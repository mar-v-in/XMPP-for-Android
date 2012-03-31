.class public Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;
.super Ljava/lang/Object;
.source "ChatSetting.java"


# instance fields
.field private key:Ljava/lang/String;

.field private type:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .parameter "type"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;->setKey(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;->setValue(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p3}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;->setType(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 46
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;->key:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 50
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;->type:I

    .line 51
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;->value:Ljava/lang/String;

    .line 55
    return-void
.end method
