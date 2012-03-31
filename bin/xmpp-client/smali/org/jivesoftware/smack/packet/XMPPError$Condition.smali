.class public Lorg/jivesoftware/smack/packet/XMPPError$Condition;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/XMPPError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# static fields
.field public static final bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final conflict:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final feature_not_implemented:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final forbidden:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final gone:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final interna_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final jid_malformed:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final no_acceptable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final not_allowed:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final not_authorized:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final payment_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final recipient_unavailable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final redirect:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final registration_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final remote_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final remote_server_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final remote_server_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final request_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final resource_constraint:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final service_unavailable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final subscription_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final undefined_condition:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final unexpected_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 174
    const-string v1, "internal-server-error"

    .line 173
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->interna_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 175
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "forbidden"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 176
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "bad-request"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 177
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "conflict"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->conflict:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 178
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 179
    const-string v1, "feature-not-implemented"

    .line 178
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 180
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "gone"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->gone:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 181
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 182
    const-string v1, "item-not-found"

    .line 181
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 183
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 184
    const-string v1, "jid-malformed"

    .line 183
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->jid_malformed:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 185
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 186
    const-string v1, "not-acceptable"

    .line 185
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->no_acceptable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 187
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "not-allowed"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->not_allowed:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 188
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 189
    const-string v1, "not-authorized"

    .line 188
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->not_authorized:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 190
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 191
    const-string v1, "payment-required"

    .line 190
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->payment_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 192
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 193
    const-string v1, "recipient-unavailable"

    .line 192
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->recipient_unavailable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 194
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "redirect"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->redirect:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 195
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 196
    const-string v1, "registration-required"

    .line 195
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->registration_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 197
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 198
    const-string v1, "remote-server-error"

    .line 197
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 199
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 200
    const-string v1, "remote-server-not-found"

    .line 199
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 201
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 202
    const-string v1, "remote-server-timeout"

    .line 201
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 203
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 204
    const-string v1, "resource-constraint"

    .line 203
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->resource_constraint:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 205
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 206
    const-string v1, "service-unavailable"

    .line 205
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 207
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 208
    const-string v1, "subscription-required"

    .line 207
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->subscription_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 209
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 210
    const-string v1, "undefined-condition"

    .line 209
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->undefined_condition:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 211
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 212
    const-string v1, "unexpected-request"

    .line 211
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->unexpected_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 213
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 214
    const-string v1, "request-timeout"

    .line 213
    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->request_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->value:Ljava/lang/String;

    .line 220
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->value:Ljava/lang/String;

    return-object v0
.end method
