.class Lorg/apache/harmony/luni/util/InputStreamHelper$1;
.super Ljava/lang/Object;
.source "InputStreamHelper.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/InputStreamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$f:[Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>([Ljava/lang/reflect/Field;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$1;->val$f:[Ljava/lang/reflect/Field;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$1;->val$f:[Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    const-class v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "buf"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v1, v2

    .line 89
    iget-object v1, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$1;->val$f:[Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    iget-object v1, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$1;->val$f:[Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    const-class v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "pos"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v1, v2

    .line 91
    iget-object v1, p0, Lorg/apache/harmony/luni/util/InputStreamHelper$1;->val$f:[Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v1, 0x0

    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, nsfe:Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
