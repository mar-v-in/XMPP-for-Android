.class public Lorg/apache/harmony/luni/util/ErrorCodeException;
.super Ljava/lang/Exception;
.source "ErrorCodeException.java"


# static fields
.field private static final serialVersionUID:J = -0x78f88a254f6d4541L


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    iput p1, p0, Lorg/apache/harmony/luni/util/ErrorCodeException;->errorCode:I

    .line 27
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/apache/harmony/luni/util/ErrorCodeException;->errorCode:I

    return v0
.end method
