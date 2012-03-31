.class public Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;
.super Ljava/lang/Object;
.source "PagedResultSearchControlValue.java"


# instance fields
.field private final cookie:[B

.field private final size:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .parameter "size"
    .parameter "cookie"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;->cookie:[B

    .line 49
    iput p1, p0, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;->size:I

    .line 50
    return-void
.end method


# virtual methods
.method public getCookie()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;->cookie:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;->size:I

    return v0
.end method
