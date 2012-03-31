.class public Lorg/jivesoftware/smackx/jingle/nat/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# instance fields
.field private ip:Ljava/lang/String;

.field private port:I

.field private result:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->result:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->ip:Ljava/lang/String;

    .line 64
    iput v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->port:I

    .line 60
    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->port:I

    return v0
.end method

.method public isReachable()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->result:Z

    return v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 79
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->ip:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 83
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->port:I

    .line 84
    return-void
.end method

.method public setResult(Z)V
    .locals 0
    .parameter "result"

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TestResult;->result:Z

    .line 88
    return-void
.end method
