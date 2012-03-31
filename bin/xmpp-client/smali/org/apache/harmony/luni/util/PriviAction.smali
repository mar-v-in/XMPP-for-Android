.class public Lorg/apache/harmony/luni/util/PriviAction;
.super Ljava/lang/Object;
.source "PriviAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final GET_SECURITY_POLICY:I = 0x2

.field private static final GET_SECURITY_PROPERTY:I = 0x4

.field private static final GET_SYSTEM_PROPERTY:I = 0x1

.field private static final SET_ACCESSIBLE:I = 0x3


# instance fields
.field private final action:I

.field private arg1:Ljava/lang/Object;

.field private arg2:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    .line 66
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .parameter "action"
    .parameter "arg"

    .prologue
    .line 83
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    .line 85
    iput-object p2, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "property"

    .prologue
    .line 97
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    .line 99
    iput-object p1, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "defaultAnswer"

    .prologue
    .line 113
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    .line 115
    iput-object p1, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    .line 116
    iput-object p2, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg2:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 78
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    .line 80
    iput-object p1, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public static getSecurityProperty(Ljava/lang/String;)Ljava/security/PrivilegedAction;
    .locals 2
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/security/PrivilegedAction",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    iget v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 129
    :pswitch_0
    iget-object v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 131
    :pswitch_1
    iget-object v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 133
    :pswitch_2
    invoke-static {}, Ljava/security/Policy;->getPolicy()Ljava/security/Policy;

    move-result-object v0

    goto :goto_1

    .line 135
    :pswitch_3
    iget-object v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
