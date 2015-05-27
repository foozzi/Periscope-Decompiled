.class public Lo/vf;
.super Landroid/app/Application;
.source ""


# static fields
.field private static blo:Lo/ot;

.field private static blp:Lo/aad;

.field private static blq:Lo/zx;

.field private static blr:Lo/acm;

.field private static bls:Lo/zp;

.field private static blt:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lo/vg;

    invoke-direct {v0}, Lo/vg;-><init>()V

    sput-object v0, Lo/kj;->NN:Lo/kq;

    .line 61
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lo/kj;->qa:Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lo/kj;->NO:Ljava/lang/String;

    .line 64
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static tH()Lo/ot;
    .locals 1

    .line 102
    sget-object v0, Lo/vf;->blo:Lo/ot;

    return-object v0
.end method

.method public static tI()Lo/aad;
    .locals 1

    .line 106
    sget-object v0, Lo/vf;->blp:Lo/aad;

    return-object v0
.end method

.method public static tJ()Lo/zx;
    .locals 1

    .line 110
    sget-object v0, Lo/vf;->blq:Lo/zx;

    return-object v0
.end method

.method public static tK()Lo/acm;
    .locals 1

    .line 114
    sget-object v0, Lo/vf;->blr:Lo/acm;

    return-object v0
.end method

.method public static tL()Lo/zp;
    .locals 1

    .line 118
    sget-object v0, Lo/vf;->bls:Lo/zp;

    return-object v0
.end method

.method public static tM()Ljava/util/concurrent/Executor;
    .locals 1

    .line 122
    sget-object v0, Lo/vf;->blt:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 80
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 82
    invoke-static {p0}, Lo/vi;->ˊ(Landroid/app/Application;)V

    .line 84
    new-instance v3, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    sget-object v0, Lo/ze;->brk:Lo/zg;

    invoke-interface {v0}, Lo/zg;->uM()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo/ze;->brk:Lo/zg;

    invoke-interface {v1}, Lo/zg;->uN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Lo/pq;

    new-instance v1, Lo/mn;

    invoke-direct {v1, v3}, Lo/mn;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lo/ɬ;

    invoke-direct {v1}, Lo/ɬ;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lo/pj;->ˊ(Landroid/content/Context;[Lo/pq;)Lo/pj;

    .line 90
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lo/vf;->blt:Ljava/util/concurrent/Executor;

    .line 91
    sget-object v0, Lo/vf;->blt:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lo/xt;->ˊ(Ljava/util/concurrent/Executor;)V

    .line 92
    sget-object v0, Lo/vf;->blt:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lo/adb;->ˊ(Ljava/util/concurrent/Executor;)V

    .line 94
    invoke-static {}, Lo/ot;->bW()Lo/ov;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ov;->ᔉ(Z)Lo/ov;

    move-result-object v0

    invoke-virtual {v0}, Lo/ov;->bY()Lo/ot;

    move-result-object v0

    sput-object v0, Lo/vf;->blo:Lo/ot;

    .line 95
    new-instance v0, Lo/aad;

    sget-object v1, Lo/vf;->blo:Lo/ot;

    invoke-direct {v0, p0, v1}, Lo/aad;-><init>(Landroid/content/Context;Lo/ot;)V

    sput-object v0, Lo/vf;->blp:Lo/aad;

    .line 96
    new-instance v0, Lo/zx;

    invoke-direct {v0, p0}, Lo/zx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lo/vf;->blq:Lo/zx;

    .line 97
    new-instance v0, Lo/acm;

    sget-object v1, Lo/vf;->blo:Lo/ot;

    sget-object v2, Lo/vf;->blq:Lo/zx;

    invoke-direct {v0, p0, v1, v2}, Lo/acm;-><init>(Landroid/content/Context;Lo/ot;Lo/zx;)V

    sput-object v0, Lo/vf;->blr:Lo/acm;

    .line 98
    new-instance v0, Lo/zp;

    sget-object v1, Lo/vf;->blo:Lo/ot;

    invoke-direct {v0, v1}, Lo/zp;-><init>(Lo/ot;)V

    sput-object v0, Lo/vf;->bls:Lo/zp;

    .line 99
    return-void
.end method
