.class public Lorg/ietf/jgss/MessageProp;
.super Ljava/lang/Object;
.source "MessageProp.java"


# instance fields
.field private duplicate:Z

.field private gap:Z

.field private minorStatus:I

.field private minorString:Ljava/lang/String;

.field private old:Z

.field private privState:Z

.field private qop:I

.field private unseq:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .parameter "qop"
    .parameter "privState"

    .prologue
    .line 52
    invoke-direct {p0, p2}, Lorg/ietf/jgss/MessageProp;-><init>(Z)V

    .line 53
    iput p1, p0, Lorg/ietf/jgss/MessageProp;->qop:I

    .line 54
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "privState"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lorg/ietf/jgss/MessageProp;->privState:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getMinorStatus()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/ietf/jgss/MessageProp;->minorStatus:I

    return v0
.end method

.method public getMinorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/ietf/jgss/MessageProp;->minorString:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacy()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/ietf/jgss/MessageProp;->privState:Z

    return v0
.end method

.method public getQOP()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/ietf/jgss/MessageProp;->qop:I

    return v0
.end method

.method public isDuplicateToken()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/ietf/jgss/MessageProp;->duplicate:Z

    return v0
.end method

.method public isGapToken()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/ietf/jgss/MessageProp;->gap:Z

    return v0
.end method

.method public isOldToken()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/ietf/jgss/MessageProp;->old:Z

    return v0
.end method

.method public isUnseqToken()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/ietf/jgss/MessageProp;->unseq:Z

    return v0
.end method

.method public setPrivacy(Z)V
    .locals 0
    .parameter "privState"

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/ietf/jgss/MessageProp;->privState:Z

    .line 90
    return-void
.end method

.method public setQOP(I)V
    .locals 0
    .parameter "qop"

    .prologue
    .line 93
    iput p1, p0, Lorg/ietf/jgss/MessageProp;->qop:I

    .line 94
    return-void
.end method

.method public setSupplementaryStates(ZZZZILjava/lang/String;)V
    .locals 0
    .parameter "duplicate"
    .parameter "old"
    .parameter "unseq"
    .parameter "gap"
    .parameter "minorStatus"
    .parameter "minorString"

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/ietf/jgss/MessageProp;->duplicate:Z

    .line 99
    iput-boolean p2, p0, Lorg/ietf/jgss/MessageProp;->old:Z

    .line 100
    iput-boolean p3, p0, Lorg/ietf/jgss/MessageProp;->unseq:Z

    .line 101
    iput-boolean p4, p0, Lorg/ietf/jgss/MessageProp;->gap:Z

    .line 102
    iput p5, p0, Lorg/ietf/jgss/MessageProp;->minorStatus:I

    .line 103
    iput-object p6, p0, Lorg/ietf/jgss/MessageProp;->minorString:Ljava/lang/String;

    .line 104
    return-void
.end method
