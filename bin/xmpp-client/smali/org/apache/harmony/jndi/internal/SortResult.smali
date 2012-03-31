.class public Lorg/apache/harmony/jndi/internal/SortResult;
.super Ljava/lang/Object;
.source "SortResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x326e452720520c25L


# instance fields
.field private final attributeType:Ljava/lang/String;

.field private final sortresult:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "sortresult"
    .parameter "attrtype"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/apache/harmony/jndi/internal/SortResult;->sortresult:I

    .line 62
    iput-object p2, p0, Lorg/apache/harmony/jndi/internal/SortResult;->attributeType:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getAttributeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/SortResult;->attributeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSortresult()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/apache/harmony/jndi/internal/SortResult;->sortresult:I

    return v0
.end method
