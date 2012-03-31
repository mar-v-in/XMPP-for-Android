.class public Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;
.super Ljava/lang/Object;
.source "DirStateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/naming/spi/DirStateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;

.field private final obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 0
    .parameter "o"
    .parameter "a"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;->obj:Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;->attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;

    .line 63
    return-void
.end method


# virtual methods
.method public getAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;->attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/spi/DirStateFactory$Result;->obj:Ljava/lang/Object;

    return-object v0
.end method
