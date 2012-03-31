.class Lorg/apache/harmony/auth/internal/nls/Messages$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/auth/internal/nls/Messages;->setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
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
.field private final synthetic val$loader:Ljava/lang/ClassLoader;

.field private final synthetic val$locale:Ljava/util/Locale;

.field private final synthetic val$resource:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/auth/internal/nls/Messages$1;->val$resource:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/auth/internal/nls/Messages$1;->val$locale:Ljava/util/Locale;

    iput-object p3, p0, Lorg/apache/harmony/auth/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lorg/apache/harmony/auth/internal/nls/Messages$1;->val$resource:Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lorg/apache/harmony/auth/internal/nls/Messages$1;->val$locale:Ljava/util/Locale;

    .line 240
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/auth/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    .line 237
    :goto_0
    invoke-static {v1, v2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method
