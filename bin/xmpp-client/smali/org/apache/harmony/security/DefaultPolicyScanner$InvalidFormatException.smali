.class public Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
.super Ljava/lang/Exception;
.source "DefaultPolicyScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/DefaultPolicyScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidFormatException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x505973eff40afd68L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 131
    return-void
.end method
