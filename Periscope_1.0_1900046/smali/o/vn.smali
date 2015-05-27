.class public Lo/vn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/vn$1;,
        Lo/vn$ˊ;,
        Lo/vn$if;
    }
.end annotation


# static fields
.field private static bnx:Lo/vn;


# instance fields
.field private final bll:Lo/acm;

.field private final bnA:Lo/aad;

.field private final bnB:Lo/zp;

.field private final bnC:Lo/acx;

.field private final bnD:Landroid/os/Handler;

.field private final bnE:Lo/vn$if;

.field private final bnF:Lo/zx;

.field private final bny:Lo/ot;

.field private final bnz:Lo/ot;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lo/ot;Lo/aad;Lo/zp;Lo/acm;Lo/zx;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/vn;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lo/vn;->bny:Lo/ot;

    .line 63
    iput-object p3, p0, Lo/vn;->bnA:Lo/aad;

    .line 64
    iput-object p6, p0, Lo/vn;->bnF:Lo/zx;

    .line 65
    iput-object p4, p0, Lo/vn;->bnB:Lo/zp;

    .line 66
    iput-object p5, p0, Lo/vn;->bll:Lo/acm;

    .line 67
    new-instance v0, Lo/acx;

    invoke-direct {v0}, Lo/acx;-><init>()V

    iput-object v0, p0, Lo/vn;->bnC:Lo/acx;

    .line 68
    new-instance v0, Lo/vn$if;

    invoke-direct {v0, p0}, Lo/vn$if;-><init>(Lo/vn;)V

    iput-object v0, p0, Lo/vn;->bnE:Lo/vn$if;

    .line 69
    invoke-static {}, Lo/ot;->bW()Lo/ov;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ov;->ᔉ(Z)Lo/ov;

    move-result-object v0

    invoke-virtual {v0}, Lo/ov;->bY()Lo/ot;

    move-result-object v0

    iput-object v0, p0, Lo/vn;->bnz:Lo/ot;

    .line 70
    iget-object v0, p0, Lo/vn;->bnz:Lo/ot;

    iget-object v1, p0, Lo/vn;->bnE:Lo/vn$if;

    invoke-virtual {v0, v1}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/vn;->bnD:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic ʻ(Lo/vn;)Lo/aad;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/vn;->bnA:Lo/aad;

    return-object v0
.end method

.method static synthetic ʼ(Lo/vn;)Lo/zx;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/vn;->bnF:Lo/zx;

    return-object v0
.end method

.method private ˊ(ILandroid/os/Bundle;IJ)Ljava/lang/String;
    .locals 8

    .line 427
    iget-object v0, p0, Lo/vn;->bnC:Lo/acx;

    new-instance v1, Lo/vq;

    iget-object v2, p0, Lo/vn;->bnz:Lo/ot;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lo/vq;-><init>(Lo/ot;ILandroid/os/Bundle;IJ)V

    invoke-virtual {v0, v1}, Lo/acx;->ˏ(Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lo/ot;)Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x10

    invoke-direct {p0, p1, v1, v0}, Lo/vn;->ˊ(Lo/ot;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lo/ot;ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .line 436
    iget-object v0, p0, Lo/vn;->bnC:Lo/acx;

    new-instance v1, Lo/vq;

    invoke-direct {v1, p1, p2, p3}, Lo/vq;-><init>(Lo/ot;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lo/acx;->ˏ(Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lo/vn;)Lo/vn$if;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/vn;->bnE:Lo/vn$if;

    return-object v0
.end method

.method private ˋ(Lo/ot;)Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x11

    invoke-direct {p0, p1, v1, v0}, Lo/vn;->ˊ(Lo/ot;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˋ(Lo/vn;)Lo/zp;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/vn;->bnB:Lo/zp;

    return-object v0
.end method

.method private ˎ(Lo/ot;)Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x12

    invoke-direct {p0, p1, v1, v0}, Lo/vn;->ˊ(Lo/ot;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˎ(Lo/vn;)Lo/ot;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/vn;->bny:Lo/ot;

    return-object v0
.end method

.method private ˏ(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lo/vn;->bnz:Lo/ot;

    invoke-direct {p0, v0, p1, p2}, Lo/vn;->ˊ(Lo/ot;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˏ(Lo/vn;)Lo/acx;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/vn;->bnC:Lo/acx;

    return-object v0
.end method

.method static synthetic ᐝ(Lo/vn;)Landroid/os/Handler;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/vn;->bnD:Landroid/os/Handler;

    return-object v0
.end method

.method public static ᵋ(Landroid/content/Context;)Lo/vn;
    .locals 7

    .line 92
    sget-object v0, Lo/vn;->bnx:Lo/vn;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lo/vn;

    invoke-static {}, Lo/vf;->tH()Lo/ot;

    move-result-object v2

    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v3

    invoke-static {}, Lo/vf;->tL()Lo/zp;

    move-result-object v4

    invoke-static {}, Lo/vf;->tK()Lo/acm;

    move-result-object v5

    invoke-static {}, Lo/vf;->tJ()Lo/zx;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lo/vn;-><init>(Landroid/content/Context;Lo/ot;Lo/aad;Lo/zp;Lo/acm;Lo/zx;)V

    sput-object v0, Lo/vn;->bnx:Lo/vn;

    .line 97
    :cond_0
    sget-object v0, Lo/vn;->bnx:Lo/vn;

    return-object v0
.end method


# virtual methods
.method public tQ()V
    .locals 4

    .line 79
    new-instance v3, Landroid/content/Intent;

    iget-object v0, p0, Lo/vn;->mContext:Landroid/content/Context;

    const-class v1, Lo/acw;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    iget-object v0, p0, Lo/vn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/vn;->bnC:Lo/acx;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 81
    return-void
.end method

.method public tR()V
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lo/vn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/vn;->bnC:Lo/acx;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v2

    .line 89
    :goto_0
    return-void
.end method

.method public tS()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tT()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tU()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tV()Ljava/lang/String;
    .locals 2

    .line 208
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/16 v1, 0x25

    invoke-direct {p0, v1, v0}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tW()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tX()Ljava/lang/String;
    .locals 6

    .line 255
    new-instance v0, Lo/vr;

    new-instance v1, Lo/vo;

    invoke-direct {v1, p0}, Lo/vo;-><init>(Lo/vn;)V

    invoke-direct {v0, v1}, Lo/vr;-><init>(Lo/vn$ˊ;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lo/aai$if;

    sget-object v2, Lo/aai$if;->btj:Lo/aai$if;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/aai$if;->btk:Lo/aai$if;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lo/aai$if;->btl:Lo/aai$if;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lo/vr;->ˊ([Lo/aai$if;)Lo/vr;

    move-result-object v4

    .line 302
    invoke-static {}, Lo/ot;->bW()Lo/ov;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ov;->ᔉ(Z)Lo/ov;

    move-result-object v0

    invoke-virtual {v0}, Lo/ov;->bY()Lo/ot;

    move-result-object v5

    .line 304
    invoke-virtual {v5, v4}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 306
    invoke-direct {p0, v5}, Lo/vn;->ˎ(Lo/ot;)Ljava/lang/String;

    .line 307
    invoke-direct {p0, v5}, Lo/vn;->ˋ(Lo/ot;)Ljava/lang/String;

    .line 309
    invoke-direct {p0, v5}, Lo/vn;->ˊ(Lo/ot;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tY()Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x16

    invoke-direct {p0, v1, v0}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tZ()Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 396
    const/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ua()V
    .locals 7

    .line 463
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 464
    const-string v0, "e_file_dir"

    iget-object v1, p0, Lo/vn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    move-object v0, p0

    move-object v2, v6

    const/16 v1, 0x28

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lo/vn;->ˊ(ILandroid/os/Bundle;IJ)Ljava/lang/String;

    .line 466
    return-void
.end method

.method public ʻ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 407
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 408
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v0, "e_session_id"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v0, "e_log"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/16 v0, 0x1b

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʼ(ZZ)Ljava/lang/String;
    .locals 2

    .line 388
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 389
    const-string v0, "e_user_follow_enabled"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    const-string v0, "e_autosave_enabled"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    const/16 v0, 0x1d

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;FFI)Ljava/lang/String;
    .locals 2

    .line 342
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 343
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v0, "e_session_id"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v0, "e_duration"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 346
    const-string v0, "e_completion"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 347
    const-string v0, "e_num_hearts"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const/16 v0, 0x19

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIF)Ljava/lang/String;
    .locals 2

    .line 416
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 417
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "e_session_id"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v0, "e_log"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "e_num_hearts"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    const-string v0, "e_n_comments"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    const-string v0, "e_duration"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 423
    const/16 v0, 0x1c

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    const-string v0, "e_secret_key"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "e_secret_token"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "e_username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "e_user_id"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "e_phone_number"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "e_install_id"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZFFZ)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;ZFFZ)Ljava/lang/String;"
        }
    .end annotation

    .line 363
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 364
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "e_title"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v0, "e_locked_ids"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 367
    const-string v0, "e_has_loc"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    const-string v0, "e_lat"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 369
    const-string v0, "e_long"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 370
    const-string v0, "e_following_only_chat"

    invoke-virtual {v1, v0, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;)Ljava/lang/String;"
        }
    .end annotation

    .line 218
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 219
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "e_user_ids"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 221
    const/16 v0, 0x26

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Ljava/lang/String;>;)Ljava/lang/String;"
        }
    .end annotation

    .line 327
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 328
    const-string v0, "extra_ids"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 329
    move-object v0, p0

    move-object v2, v6

    const/16 v1, 0x13

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lo/vn;->ˊ(ILandroid/os/Bundle;IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/HashSet<Ljava/lang/String;>;)Ljava/lang/String;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lo/vn;->bnA:Lo/aad;

    invoke-virtual {v0, p1}, Lo/aad;->ˋ(Ljava/util/HashSet;)V

    .line 168
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 169
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 170
    const-string v0, "extra_ids"

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    const/16 v0, 0x15

    invoke-direct {p0, v0, v2}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/aaj;)V
    .locals 2

    .line 440
    iget-object v0, p0, Lo/vn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 441
    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v0

    invoke-virtual {v0}, Lo/mn;->bi()V

    .line 442
    iget-object v0, p0, Lo/vn;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->logout()V

    .line 443
    iget-object v0, p0, Lo/vn;->bnB:Lo/zp;

    invoke-virtual {v0}, Lo/zp;->logout()V

    .line 444
    iget-object v0, p0, Lo/vn;->bll:Lo/acm;

    invoke-virtual {v0}, Lo/acm;->unregister()V

    .line 445
    invoke-static {}, Lo/vf;->tJ()Lo/zx;

    move-result-object v0

    invoke-virtual {v0}, Lo/zx;->logout()V

    .line 446
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 447
    iget-object v0, p0, Lo/vn;->bny:Lo/ot;

    invoke-virtual {v0, p1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 448
    return-void
.end method

.method public ˋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    const-string v0, "e_username"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "e_display_name"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "e_secret_key"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "e_secret_token"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˮ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 237
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 238
    const-string v0, "e_user_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ۥ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 334
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 335
    const-string v0, "e_session_id"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/16 v0, 0x18

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ว(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v0, "e_user_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᐝ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 114
    const-string v0, "e_username"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "e_secret_key"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "e_secret_token"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᐠ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 375
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 376
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "e_log"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/16 v0, 0x1f

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᐣ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 400
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 401
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "e_log"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᐦ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lo/vn;->bnA:Lo/aad;

    invoke-virtual {v0, p1}, Lo/aad;->ﭕ(Ljava/lang/String;)V

    .line 161
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    const-string v0, "e_user_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᒄ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 175
    iget-object v0, p0, Lo/vn;->bnA:Lo/aad;

    invoke-virtual {v0, p1}, Lo/aad;->ﭜ(Ljava/lang/String;)V

    .line 176
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string v0, "e_user_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/16 v0, 0x9

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᒼ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string v0, "e_user_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/16 v0, 0xb

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᓑ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v0, "e_user_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/16 v0, 0xc

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᔆ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 194
    iget-object v0, p0, Lo/vn;->bnA:Lo/aad;

    invoke-virtual {v0, p1}, Lo/aad;->ﭡ(Ljava/lang/String;)V

    .line 195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    const-string v0, "e_user_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/16 v0, 0x23

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᴖ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 201
    iget-object v0, p0, Lo/vn;->bnA:Lo/aad;

    invoke-virtual {v0, p1}, Lo/aad;->ﭤ(Ljava/lang/String;)V

    .line 202
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 203
    const-string v0, "e_user_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/16 v0, 0x24

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᴬ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 213
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᴱ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 226
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/16 v0, 0x29

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᴲ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 232
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/16 v0, 0x21

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᴾ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 249
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 250
    const-string v0, "extra_query"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᵁ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 313
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 314
    const-string v0, "extra_width"

    const/16 v1, 0x140

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    const-string v0, "extra_height"

    const/16 v1, 0x238

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string v0, "e_region"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/16 v0, 0x17

    invoke-direct {p0, v0, v2}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᵃ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 352
    iget-object v0, p0, Lo/vn;->bnB:Lo/zp;

    invoke-virtual {v0, p1}, Lo/zp;->ị(Ljava/lang/String;)Lo/xh;

    move-result-object v1

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, v1, Lo/xh;->boT:Z

    .line 354
    iget-object v0, p0, Lo/vn;->bnB:Lo/zp;

    invoke-virtual {v0, v1}, Lo/zp;->ˋ(Lo/xh;)V

    .line 355
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 356
    const-string v0, "e_broadcast_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/16 v0, 0x2a

    invoke-direct {p0, v0, v2}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᵅ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 382
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 383
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/16 v0, 0x2b

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᵉ(Ljava/lang/String;)V
    .locals 2

    .line 451
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 452
    const-string v0, "e_broadcast_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/16 v0, 0x22

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    .line 454
    return-void
.end method

.method public ᵊ(Ljava/lang/String;)V
    .locals 2

    .line 457
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 458
    const-string v0, "e_token"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/16 v0, 0x27

    invoke-direct {p0, v0, v1}, Lo/vn;->ˏ(ILandroid/os/Bundle;)Ljava/lang/String;

    .line 460
    return-void
.end method
