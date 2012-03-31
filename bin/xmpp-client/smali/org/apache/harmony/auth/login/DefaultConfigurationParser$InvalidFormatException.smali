.class public Lorg/apache/harmony/auth/login/DefaultConfigurationParser$InvalidFormatException;
.super Ljava/lang/Exception;
.source "DefaultConfigurationParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/auth/login/DefaultConfigurationParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidFormatException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1743cff4e2318893L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
