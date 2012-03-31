.class public Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
.super Ljava/lang/Object;
.source "DefaultPolicyScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/DefaultPolicyScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrincipalEntry"
.end annotation


# static fields
.field public static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field public klass:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
