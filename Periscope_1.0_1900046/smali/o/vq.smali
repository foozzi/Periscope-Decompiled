.class public Lo/vq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bnA:Lo/aad;

.field private final bnN:Ltv/periscope/android/api/ApiService;

.field private final bnO:I

.field private final bnP:Landroid/os/Bundle;

.field private bnQ:J

.field private final bnR:J

.field private bnS:I

.field private final bny:Lo/ot;


# direct methods
.method public constructor <init>(Lo/ot;ILandroid/os/Bundle;)V
    .locals 7

    .line 122
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    const/4 v4, 0x5

    const-wide/16 v5, 0x7d0

    invoke-direct/range {v0 .. v6}, Lo/vq;-><init>(Lo/ot;ILandroid/os/Bundle;IJ)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lo/ot;ILandroid/os/Bundle;IJ)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p2, p0, Lo/vq;->bnO:I

    .line 130
    iput-object p3, p0, Lo/vq;->bnP:Landroid/os/Bundle;

    .line 131
    invoke-static {}, Lo/xt;->un()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Ltv/periscope/android/api/ApiService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/ApiService;

    iput-object v0, p0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    .line 132
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    iput-object v0, p0, Lo/vq;->bnA:Lo/aad;

    .line 133
    iput-object p1, p0, Lo/vq;->bny:Lo/ot;

    .line 134
    iput p4, p0, Lo/vq;->bnS:I

    .line 135
    iput-wide p5, p0, Lo/vq;->bnR:J

    .line 136
    iget-wide v0, p0, Lo/vq;->bnR:J

    iput-wide v0, p0, Lo/vq;->bnQ:J

    .line 137
    return-void
.end method

.method private uc()Lo/aai;
    .locals 4

    .line 791
    new-instance v2, Lo/xk;

    invoke-direct {v2}, Lo/xk;-><init>()V

    .line 793
    :try_start_0
    iget-object v0, p0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v2}, Ltv/periscope/android/api/ApiService;->getBlocked(Lo/xk;)Ljava/util/List;

    move-result-object v3

    .line 794
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btG:Lo/aai$if;

    invoke-direct {v0, v1, v3}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 795
    :catch_0
    move-exception v3

    .line 796
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btG:Lo/aai$if;

    invoke-direct {v0, v1, v3}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0
.end method

.method private ʻ(Landroid/os/Bundle;)Lo/aai;
    .locals 5

    .line 708
    const-string v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 709
    new-instance v3, Lo/wc;

    invoke-direct {v3}, Lo/wc;-><init>()V

    .line 710
    iput-object v2, v3, Lo/wc;->bnh:Ljava/lang/String;

    .line 712
    :try_start_0
    iget-object v0, p0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->deleteReplay(Lo/wc;)Lo/wd;

    move-result-object v4

    .line 713
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btr:Lo/aai$if;

    invoke-direct {v0, v1, v4}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 714
    :catch_0
    move-exception v4

    .line 715
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btr:Lo/aai$if;

    invoke-direct {v0, v1, v4}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0
.end method

.method private ʻ(Lretrofit/RetrofitError;)Z
    .locals 2

    .line 179
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v0

    sget-object v1, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ʼ(Landroid/os/Bundle;)Lo/aai;
    .locals 5

    .line 720
    const-string v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    new-instance v3, Lo/wa;

    invoke-direct {v3}, Lo/wa;-><init>()V

    .line 722
    iput-object v2, v3, Lo/wa;->bnh:Ljava/lang/String;

    .line 724
    :try_start_0
    iget-object v0, p0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->deleteBroadcast(Lo/wa;)Lo/wb;

    move-result-object v4

    .line 725
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btu:Lo/aai$if;

    invoke-direct {v0, v1, v4}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 726
    :catch_0
    move-exception v4

    .line 727
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btu:Lo/aai$if;

    invoke-direct {v0, v1, v4}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0
.end method

.method private ʽ(Landroid/os/Bundle;)Lo/aai;
    .locals 4

    .line 732
    new-instance v2, Lo/xy;

    invoke-direct {v2}, Lo/xy;-><init>()V

    .line 733
    const-string v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/xy;->bnh:Ljava/lang/String;

    .line 734
    const-string v0, "e_user_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Lo/xy;->bpT:Ljava/util/ArrayList;

    .line 736
    :try_start_0
    iget-object v0, p0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v2}, Ltv/periscope/android/api/ApiService;->shareBroadcast(Lo/xy;)Lo/xz;

    move-result-object v3

    .line 737
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btv:Lo/aai$if;

    invoke-direct {v0, v1, v3}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 738
    :catch_0
    move-exception v3

    .line 739
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btv:Lo/aai$if;

    invoke-direct {v0, v1, v3}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0
.end method

.method private ʾ(Landroid/os/Bundle;)Lo/aai;
    .locals 5

    .line 767
    const-string v0, "e_user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 768
    new-instance v3, Lo/vs;

    invoke-direct {v3}, Lo/vs;-><init>()V

    .line 769
    iput-object v2, v3, Lo/vs;->nD:Ljava/lang/String;

    .line 771
    :try_start_0
    iget-object v0, p0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->block(Lo/vs;)Lo/vt;

    move-result-object v4

    .line 772
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btE:Lo/aai$if;

    invoke-direct {v0, v1, v4}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 773
    :catch_0
    move-exception v4

    .line 774
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btE:Lo/aai$if;

    invoke-direct {v0, v1, v4}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0
.end method

.method private ʿ(Landroid/os/Bundle;)Lo/aai;
    .locals 5

    .line 779
    const-string v0, "e_user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 780
    new-instance v3, Lo/vs;

    invoke-direct {v3}, Lo/vs;-><init>()V

    .line 781
    iput-object v2, v3, Lo/vs;->nD:Ljava/lang/String;

    .line 783
    :try_start_0
    iget-object v0, p0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->unblock(Lo/vs;)Lo/vt;

    move-result-object v4

    .line 784
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btF:Lo/aai$if;

    invoke-direct {v0, v1, v4}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 785
    :catch_0
    move-exception v4

    .line 786
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btF:Lo/aai$if;

    invoke-direct {v0, v1, v4}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0
.end method

.method private ͺ(Landroid/os/Bundle;)Lo/aai;
    .locals 4

    .line 744
    new-instance v2, Lo/xd;

    invoke-direct {v2}, Lo/xd;-><init>()V

    .line 745
    const-string v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/xd;->bnh:Ljava/lang/String;

    .line 747
    :try_start_0
    iget-object v0, p0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v2}, Ltv/periscope/android/api/ApiService;->markAbuse(Lo/xd;)Lo/xe;

    move-result-object v3

    .line 748
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btw:Lo/aai$if;

    invoke-direct {v0, v1, v3}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 749
    :catch_0
    move-exception v3

    .line 750
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btw:Lo/aai$if;

    invoke-direct {v0, v1, v3}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0
.end method

.method private ᐝ(ILandroid/os/Bundle;)Lo/aai;
    .locals 18

    .line 187
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 190
    :pswitch_0
    const-string v0, "e_secret_key"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 191
    const-string v0, "e_secret_token"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 192
    const-string v0, "e_username"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 193
    const-string v0, "e_user_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 194
    const-string v0, "e_phone_number"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 195
    const-string v0, "e_install_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 198
    :try_start_0
    new-instance v14, Lo/yd;

    invoke-direct {v14}, Lo/yd;-><init>()V

    .line 199
    iput-object v9, v14, Lo/yd;->bpZ:Ljava/lang/String;

    .line 200
    iput-object v8, v14, Lo/yd;->bqa:Ljava/lang/String;

    .line 201
    iput-object v10, v14, Lo/yd;->nF:Ljava/lang/String;

    .line 202
    iput-object v11, v14, Lo/yd;->nD:Ljava/lang/String;

    .line 203
    iput-object v12, v14, Lo/yd;->bqb:Ljava/lang/String;

    .line 204
    iput-object v13, v14, Lo/yd;->bqc:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v14}, Ltv/periscope/android/api/ApiService;->login(Lo/yd;)Lo/ye;

    move-result-object v15

    .line 207
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bsX:Lo/aai$if;

    invoke-direct {v0, v1, v15}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 208
    :catch_0
    move-exception v14

    .line 209
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bsX:Lo/aai$if;

    invoke-direct {v0, v1, v14}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 213
    :pswitch_1
    const-string v0, "e_username"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 215
    const-string v0, "e_secret_key"

    move-object/from16 v1, p2

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 216
    const-string v0, "e_secret_token"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 217
    new-instance v11, Lo/yl;

    invoke-direct {v11}, Lo/yl;-><init>()V

    .line 218
    iput-object v8, v11, Lo/yl;->bpx:Ljava/lang/String;

    .line 219
    iput-object v9, v11, Lo/yl;->bpZ:Ljava/lang/String;

    .line 220
    iput-object v10, v11, Lo/yl;->bqa:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v11}, Ltv/periscope/android/api/ApiService;->validateUsername(Lo/yl;)Lo/ym;

    move-result-object v12

    .line 224
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bsY:Lo/aai$if;

    invoke-direct {v0, v1, v12}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 226
    :catch_1
    move-exception v9

    .line 228
    :try_start_2
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bsY:Lo/aai$if;

    const-class v2, Lo/yk;

    invoke-virtual {v9, v2}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 229
    :catch_2
    move-exception v10

    .line 230
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bsY:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 235
    :pswitch_2
    const-string v0, "e_username"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 236
    const-string v0, "e_display_name"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 237
    const-string v0, "e_secret_key"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 238
    const-string v0, "e_secret_token"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 239
    new-instance v12, Lo/yn;

    invoke-direct {v12}, Lo/yn;-><init>()V

    .line 240
    iput-object v8, v12, Lo/yn;->bpx:Ljava/lang/String;

    .line 241
    iput-object v9, v12, Lo/yn;->bpy:Ljava/lang/String;

    .line 242
    iput-object v10, v12, Lo/yn;->bpZ:Ljava/lang/String;

    .line 243
    iput-object v11, v12, Lo/yn;->bqa:Ljava/lang/String;

    .line 245
    move-object/from16 v0, p0

    :try_start_3
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v12}, Ltv/periscope/android/api/ApiService;->verifyUsername(Lo/yn;)Lo/yo;

    move-result-object v13

    .line 246
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bsZ:Lo/aai$if;

    invoke-direct {v0, v1, v13}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_3
    .catch Lretrofit/RetrofitError; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 248
    :catch_3
    move-exception v13

    .line 249
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bsZ:Lo/aai$if;

    invoke-direct {v0, v1, v13}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 253
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/vq;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v8

    .line 254
    new-instance v9, Lo/wv;

    invoke-direct {v9}, Lo/wv;-><init>()V

    .line 255
    iput-object v8, v9, Lo/wv;->nD:Ljava/lang/String;

    .line 257
    move-object/from16 v0, p0

    :try_start_4
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->getUser(Lo/wv;)Lo/ww;

    move-result-object v10

    .line 258
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btb:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_4
    .catch Lretrofit/RetrofitError; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    .line 259
    :catch_4
    move-exception v10

    .line 260
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btb:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 264
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/vq;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v8

    .line 265
    new-instance v9, Lo/wr;

    invoke-direct {v9}, Lo/wr;-><init>()V

    .line 266
    iput-object v8, v9, Lo/wr;->nD:Ljava/lang/String;

    .line 268
    move-object/from16 v0, p0

    :try_start_5
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->getFollowers(Lo/wr;)Ljava/util/List;

    move-result-object v10

    .line 269
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btc:Lo/aai$if;

    new-instance v2, Lo/wj;

    invoke-direct {v2, v8, v10}, Lo/wj;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_5
    .catch Lretrofit/RetrofitError; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    .line 271
    :catch_5
    move-exception v10

    .line 272
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btc:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 276
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/vq;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v8

    .line 277
    new-instance v9, Lo/ws;

    invoke-direct {v9}, Lo/ws;-><init>()V

    .line 278
    iput-object v8, v9, Lo/ws;->nD:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p0

    :try_start_6
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->getFollowing(Lo/ws;)Ljava/util/List;

    move-result-object v10

    .line 281
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btd:Lo/aai$if;

    new-instance v2, Lo/wj;

    invoke-direct {v2, v8, v10}, Lo/wj;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_6
    .catch Lretrofit/RetrofitError; {:try_start_6 .. :try_end_6} :catch_6

    return-object v0

    .line 283
    :catch_6
    move-exception v10

    .line 284
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btd:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 288
    :pswitch_6
    const-string v0, "e_user_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 289
    new-instance v9, Lo/wk;

    invoke-direct {v9}, Lo/wk;-><init>()V

    .line 290
    iput-object v8, v9, Lo/wk;->nD:Ljava/lang/String;

    .line 292
    move-object/from16 v0, p0

    :try_start_7
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->follow(Lo/wk;)Lo/wl;

    move-result-object v10

    .line 294
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bte:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_7
    .catch Lretrofit/RetrofitError; {:try_start_7 .. :try_end_7} :catch_7

    return-object v0

    .line 295
    :catch_7
    move-exception v10

    .line 296
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bte:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 301
    :pswitch_7
    const-string v0, "extra_ids"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 302
    array-length v0, v8

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 303
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {v8, v0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 305
    :cond_0
    array-length v9, v8

    .line 306
    const/4 v10, 0x0

    .line 308
    move-object v11, v8

    array-length v12, v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 309
    new-instance v15, Lo/wk;

    invoke-direct {v15}, Lo/wk;-><init>()V

    .line 310
    iput-object v14, v15, Lo/wk;->nD:Ljava/lang/String;

    .line 312
    move-object/from16 v0, p0

    :try_start_8
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v15}, Ltv/periscope/android/api/ApiService;->follow(Lo/wk;)Lo/wl;

    move-result-object v16

    .line 314
    add-int/lit8 v10, v10, 0x1

    .line 315
    if-ne v10, v9, :cond_1

    .line 316
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btp:Lo/aai$if;

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_8
    .catch Lretrofit/RetrofitError; {:try_start_8 .. :try_end_8} :catch_8

    return-object v0

    .line 324
    :cond_1
    goto :goto_1

    .line 318
    :catch_8
    move-exception v16

    .line 320
    add-int/lit8 v10, v10, 0x1

    .line 321
    if-ne v10, v9, :cond_2

    .line 322
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btp:Lo/aai$if;

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 308
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 326
    :cond_3
    goto/16 :goto_2

    .line 329
    :pswitch_8
    const-string v0, "e_user_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 330
    new-instance v9, Lo/yg;

    invoke-direct {v9}, Lo/yg;-><init>()V

    .line 331
    iput-object v8, v9, Lo/yg;->nD:Ljava/lang/String;

    .line 333
    move-object/from16 v0, p0

    :try_start_9
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->unfollow(Lo/yg;)Lo/yh;

    move-result-object v10

    .line 335
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btf:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_9
    .catch Lretrofit/RetrofitError; {:try_start_9 .. :try_end_9} :catch_9

    return-object v0

    .line 336
    :catch_9
    move-exception v10

    .line 337
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btf:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 341
    :pswitch_9
    const-string v0, "e_user_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 342
    new-instance v9, Lo/wv;

    invoke-direct {v9}, Lo/wv;-><init>()V

    .line 343
    iput-object v8, v9, Lo/wv;->nD:Ljava/lang/String;

    .line 345
    move-object/from16 v0, p0

    :try_start_a
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->getUser(Lo/wv;)Lo/ww;

    move-result-object v10

    .line 346
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btb:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_a
    .catch Lretrofit/RetrofitError; {:try_start_a .. :try_end_a} :catch_a

    return-object v0

    .line 347
    :catch_a
    move-exception v10

    .line 348
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btb:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 352
    :pswitch_a
    const-string v0, "e_user_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 353
    new-instance v9, Lo/wr;

    invoke-direct {v9}, Lo/wr;-><init>()V

    .line 354
    iput-object v8, v9, Lo/wr;->nD:Ljava/lang/String;

    .line 356
    move-object/from16 v0, p0

    :try_start_b
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->getFollowers(Lo/wr;)Ljava/util/List;

    move-result-object v10

    .line 357
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btc:Lo/aai$if;

    new-instance v2, Lo/wj;

    invoke-direct {v2, v8, v10}, Lo/wj;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_b
    .catch Lretrofit/RetrofitError; {:try_start_b .. :try_end_b} :catch_b

    return-object v0

    .line 359
    :catch_b
    move-exception v10

    .line 360
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btc:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 364
    :pswitch_b
    const-string v0, "e_user_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 365
    new-instance v9, Lo/ws;

    invoke-direct {v9}, Lo/ws;-><init>()V

    .line 366
    iput-object v8, v9, Lo/ws;->nD:Ljava/lang/String;

    .line 368
    move-object/from16 v0, p0

    :try_start_c
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->getFollowing(Lo/ws;)Ljava/util/List;

    move-result-object v10

    .line 369
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btd:Lo/aai$if;

    new-instance v2, Lo/wj;

    invoke-direct {v2, v8, v10}, Lo/wj;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_c
    .catch Lretrofit/RetrofitError; {:try_start_c .. :try_end_c} :catch_c

    return-object v0

    .line 371
    :catch_c
    move-exception v10

    .line 372
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btd:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 376
    :pswitch_c
    const-string v0, "e_broadcast_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 377
    new-instance v9, Lo/vl;

    invoke-direct {v9}, Lo/vl;-><init>()V

    .line 378
    iput-object v8, v9, Lo/vl;->bnh:Ljava/lang/String;

    .line 380
    move-object/from16 v0, p0

    :try_start_d
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->accessChannel(Lo/vl;)Lo/vm;

    move-result-object v10

    .line 381
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btg:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_d
    .catch Lretrofit/RetrofitError; {:try_start_d .. :try_end_d} :catch_d

    return-object v0

    .line 382
    :catch_d
    move-exception v10

    .line 383
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btg:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 387
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/vq;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vm()Ljava/lang/String;

    move-result-object v8

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/vq;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vn()Ljava/lang/String;

    move-result-object v9

    .line 389
    new-instance v10, Lo/yb;

    invoke-direct {v10}, Lo/yb;-><init>()V

    .line 390
    iput-object v8, v10, Lo/yb;->bpU:Ljava/lang/String;

    .line 391
    iput-object v9, v10, Lo/yb;->bpV:Ljava/lang/String;

    .line 393
    move-object/from16 v0, p0

    :try_start_e
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v10}, Ltv/periscope/android/api/ApiService;->suggestedPeople(Lo/yb;)Lo/yc;

    move-result-object v11

    .line 394
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bth:Lo/aai$if;

    invoke-direct {v0, v1, v11}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_e
    .catch Lretrofit/RetrofitError; {:try_start_e .. :try_end_e} :catch_e

    return-object v0

    .line 395
    :catch_e
    move-exception v11

    .line 396
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bth:Lo/aai$if;

    invoke-direct {v0, v1, v11}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 400
    :pswitch_e
    const-string v0, "extra_query"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 401
    new-instance v9, Lo/yj;

    invoke-direct {v9}, Lo/yj;-><init>()V

    .line 402
    iput-object v8, v9, Lo/yj;->bqg:Ljava/lang/String;

    .line 404
    move-object/from16 v0, p0

    :try_start_f
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->userSearch(Lo/yj;)Ljava/util/List;

    move-result-object v10

    .line 405
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bti:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_f
    .catch Lretrofit/RetrofitError; {:try_start_f .. :try_end_f} :catch_f

    return-object v0

    .line 406
    :catch_f
    move-exception v10

    .line 407
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bti:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 411
    :pswitch_f
    new-instance v8, Lo/xc;

    invoke-direct {v8}, Lo/xc;-><init>()V

    .line 413
    move-object/from16 v0, p0

    :try_start_10
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v8}, Ltv/periscope/android/api/ApiService;->liveBroadcastFeed(Lo/xc;)Ljava/util/List;

    move-result-object v9

    .line 414
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btj:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_10
    .catch Lretrofit/RetrofitError; {:try_start_10 .. :try_end_10} :catch_10

    return-object v0

    .line 415
    :catch_10
    move-exception v9

    .line 416
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btj:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 420
    :pswitch_10
    new-instance v8, Lo/xa;

    invoke-direct {v8}, Lo/xa;-><init>()V

    .line 422
    move-object/from16 v0, p0

    :try_start_11
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v8}, Ltv/periscope/android/api/ApiService;->followingBroadcastFeed(Lo/xa;)Ljava/util/List;

    move-result-object v9

    .line 424
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btl:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_11
    .catch Lretrofit/RetrofitError; {:try_start_11 .. :try_end_11} :catch_11

    return-object v0

    .line 425
    :catch_11
    move-exception v9

    .line 426
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btl:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 430
    :pswitch_11
    new-instance v8, Lo/wz;

    invoke-direct {v8}, Lo/wz;-><init>()V

    .line 432
    move-object/from16 v0, p0

    :try_start_12
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v8}, Ltv/periscope/android/api/ApiService;->featuredBroadcastFeed(Lo/wz;)Ljava/util/List;

    move-result-object v9

    .line 434
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btk:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_12
    .catch Lretrofit/RetrofitError; {:try_start_12 .. :try_end_12} :catch_12

    return-object v0

    .line 435
    :catch_12
    move-exception v9

    .line 436
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btk:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 441
    :pswitch_12
    const-string v0, "extra_ids"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 442
    new-instance v9, Lo/wm;

    invoke-direct {v9}, Lo/wm;-><init>()V

    .line 443
    iput-object v8, v9, Lo/wm;->bor:Ljava/util/ArrayList;

    .line 445
    move-object/from16 v0, p0

    :try_start_13
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->getBroadcasts(Lo/wm;)Ljava/util/List;

    move-result-object v10

    .line 446
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btm:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_13
    .catch Lretrofit/RetrofitError; {:try_start_13 .. :try_end_13} :catch_13

    return-object v0

    .line 447
    :catch_13
    move-exception v10

    .line 448
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btm:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 452
    :pswitch_13
    const-string v0, "e_broadcast_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 453
    const-string v0, "e_user_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 454
    new-instance v10, Lo/wp;

    invoke-direct {v10}, Lo/wp;-><init>()V

    .line 455
    iput-object v8, v10, Lo/wp;->id:Ljava/lang/String;

    .line 457
    move-object/from16 v0, p0

    :try_start_14
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v10}, Ltv/periscope/android/api/ApiService;->getBroadcastViewers(Lo/wp;)Lo/wq;

    move-result-object v11

    .line 458
    iput-object v8, v11, Lo/wq;->bnh:Ljava/lang/String;

    .line 459
    iput-object v9, v11, Lo/wq;->box:Ljava/lang/String;

    .line 460
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bto:Lo/aai$if;

    invoke-direct {v0, v1, v11}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_14
    .catch Lretrofit/RetrofitError; {:try_start_14 .. :try_end_14} :catch_14

    return-object v0

    .line 461
    :catch_14
    move-exception v11

    .line 462
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bto:Lo/aai$if;

    invoke-direct {v0, v1, v11}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 467
    :pswitch_14
    new-instance v8, Lo/xc;

    invoke-direct {v8}, Lo/xc;-><init>()V

    .line 469
    move-object/from16 v0, p0

    :try_start_15
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v8}, Ltv/periscope/android/api/ApiService;->liveBroadcastFeed(Lo/xc;)Ljava/util/List;

    move-result-object v9

    .line 470
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btq:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_15
    .catch Lretrofit/RetrofitError; {:try_start_15 .. :try_end_15} :catch_15

    return-object v0

    .line 471
    :catch_15
    move-exception v9

    .line 472
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btq:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 476
    :pswitch_15
    const-string v0, "extra_width"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 477
    const-string v0, "extra_height"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 478
    const-string v0, "e_region"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 479
    new-instance v11, Lo/vy;

    invoke-direct {v11}, Lo/vy;-><init>()V

    .line 480
    const-wide/16 v0, 0x0

    iput-wide v0, v11, Lo/vy;->bnX:D

    .line 481
    const-wide/16 v0, 0x0

    iput-wide v0, v11, Lo/vy;->bnY:D

    .line 482
    iput v8, v11, Lo/vy;->width:I

    .line 483
    iput v9, v11, Lo/vy;->height:I

    .line 484
    iput-object v10, v11, Lo/vy;->bnZ:Ljava/lang/String;

    .line 486
    move-object/from16 v0, p0

    :try_start_16
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v11}, Ltv/periscope/android/api/ApiService;->startBroadcast(Lo/vy;)Lo/vz;

    move-result-object v12

    .line 487
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bts:Lo/aai$if;

    invoke-direct {v0, v1, v12}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_16
    .catch Lretrofit/RetrofitError; {:try_start_16 .. :try_end_16} :catch_16

    return-object v0

    .line 488
    :catch_16
    move-exception v12

    .line 489
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bts:Lo/aai$if;

    invoke-direct {v0, v1, v12}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 493
    :pswitch_16
    const-string v0, "e_broadcast_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 494
    const-string v0, "e_session_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 496
    new-instance v10, Lo/xr;

    invoke-direct {v10}, Lo/xr;-><init>()V

    .line 497
    iput-object v8, v10, Lo/xr;->bnh:Ljava/lang/String;

    .line 498
    iput-object v9, v10, Lo/xr;->bnn:Ljava/lang/String;

    .line 500
    move-object/from16 v0, p0

    :try_start_17
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v10}, Ltv/periscope/android/api/ApiService;->replayViewed(Lo/xr;)Lo/xs;
    :try_end_17
    .catch Lretrofit/RetrofitError; {:try_start_17 .. :try_end_17} :catch_17

    .line 502
    goto/16 :goto_2

    .line 501
    :catch_17
    move-exception v11

    .line 503
    goto/16 :goto_2

    .line 506
    :pswitch_17
    const-string v0, "e_broadcast_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 507
    const-string v0, "e_session_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 508
    const-string v0, "e_duration"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 509
    const-string v0, "e_completion"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 510
    const-string v0, "e_num_hearts"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 511
    new-instance v13, Lo/wf;

    invoke-direct {v13}, Lo/wf;-><init>()V

    .line 512
    iput-object v8, v13, Lo/wf;->bnh:Ljava/lang/String;

    .line 513
    iput-object v9, v13, Lo/wf;->bnn:Ljava/lang/String;

    .line 514
    iput v10, v13, Lo/wf;->bol:F

    .line 515
    iput v11, v13, Lo/wf;->bom:F

    .line 516
    iput v12, v13, Lo/wf;->bon:I

    .line 518
    move-object/from16 v0, p0

    :try_start_18
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v13}, Ltv/periscope/android/api/ApiService;->endReplayViewed(Lo/wf;)Lo/wg;
    :try_end_18
    .catch Lretrofit/RetrofitError; {:try_start_18 .. :try_end_18} :catch_18

    .line 520
    goto/16 :goto_2

    .line 519
    :catch_18
    move-exception v14

    .line 521
    goto/16 :goto_2

    .line 524
    :pswitch_18
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lo/vq;->ʻ(Landroid/os/Bundle;)Lo/aai;

    move-result-object v0

    return-object v0

    .line 527
    :pswitch_19
    const-string v0, "e_broadcast_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 528
    const-string v0, "e_title"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 529
    const-string v0, "e_locked_ids"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 530
    const-string v0, "e_has_loc"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 531
    const-string v0, "e_lat"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    .line 532
    const-string v0, "e_long"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v13

    .line 533
    const-string v0, "e_following_only_chat"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 534
    new-instance v15, Lo/xp;

    invoke-direct {v15}, Lo/xp;-><init>()V

    .line 535
    iput-object v8, v15, Lo/xp;->bnh:Ljava/lang/String;

    .line 536
    iput-object v9, v15, Lo/xp;->YW:Ljava/lang/String;

    .line 537
    iput-object v10, v15, Lo/xp;->bpM:Ljava/util/ArrayList;

    .line 538
    iput-boolean v11, v15, Lo/xp;->boL:Z

    .line 539
    iput v12, v15, Lo/xp;->bpN:F

    .line 540
    iput v13, v15, Lo/xp;->bpO:F

    .line 541
    iput-boolean v14, v15, Lo/xp;->bpP:Z

    .line 543
    move-object/from16 v0, p0

    :try_start_19
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v15}, Ltv/periscope/android/api/ApiService;->publishBroadcast(Lo/xp;)Lo/xq;

    move-result-object v16

    .line 544
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btt:Lo/aai$if;

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_19
    .catch Lretrofit/RetrofitError; {:try_start_19 .. :try_end_19} :catch_19

    return-object v0

    .line 546
    :catch_19
    move-exception v16

    .line 547
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btt:Lo/aai$if;

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 551
    :pswitch_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lo/vq;->ʼ(Landroid/os/Bundle;)Lo/aai;

    move-result-object v0

    return-object v0

    .line 554
    :pswitch_1b
    const-string v0, "e_broadcast_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 555
    const-string v0, "e_session_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 556
    const-string v0, "e_log"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 557
    new-instance v11, Lo/xk;

    invoke-direct {v11}, Lo/xk;-><init>()V

    .line 558
    iget-object v12, v11, Lo/xk;->bpu:Ljava/lang/String;

    .line 560
    move-object/from16 v0, p0

    :try_start_1a
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    new-instance v1, Lo/yf;

    const-string v2, "log.txt"

    invoke-direct {v1, v10, v2}, Lo/yf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v12, v8, v9, v1}, Ltv/periscope/android/api/ApiService;->pingWatching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/yf;)Lo/xg;

    move-result-object v13

    .line 562
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btx:Lo/aai$if;

    invoke-direct {v0, v1, v13}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_1a
    .catch Lretrofit/RetrofitError; {:try_start_1a .. :try_end_1a} :catch_1a

    return-object v0

    .line 563
    :catch_1a
    move-exception v13

    .line 564
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btx:Lo/aai$if;

    invoke-direct {v0, v1, v13}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 568
    :pswitch_1c
    const-string v0, "e_broadcast_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 569
    const-string v0, "e_session_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 570
    const-string v0, "e_log"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 571
    const-string v0, "e_num_hearts"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 572
    const-string v0, "e_n_comments"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 573
    const-string v0, "e_duration"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    .line 574
    new-instance v14, Lo/xk;

    invoke-direct {v14}, Lo/xk;-><init>()V

    .line 575
    iget-object v15, v14, Lo/xk;->bpu:Ljava/lang/String;

    .line 577
    move-object/from16 v0, p0

    :try_start_1b
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    move-object v1, v15

    move-object v2, v8

    move-object v3, v9

    new-instance v4, Lo/yf;

    const-string v5, "log.txt"

    invoke-direct {v4, v10, v5}, Lo/yf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    invoke-interface/range {v0 .. v7}, Ltv/periscope/android/api/ApiService;->stopWatching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/yf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/ya;

    move-result-object v16

    .line 580
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bty:Lo/aai$if;

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_1b
    .catch Lretrofit/RetrofitError; {:try_start_1b .. :try_end_1b} :catch_1b

    return-object v0

    .line 581
    :catch_1b
    move-exception v16

    .line 582
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->bty:Lo/aai$if;

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 586
    :pswitch_1d
    const-string v0, "e_user_follow_enabled"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 587
    const-string v0, "e_autosave_enabled"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 588
    new-instance v10, Lo/xw;

    invoke-direct {v10}, Lo/xw;-><init>()V

    .line 589
    new-instance v11, Lo/xm;

    invoke-direct {v11}, Lo/xm;-><init>()V

    .line 590
    iput-boolean v8, v11, Lo/xm;->bpv:Z

    .line 591
    iput-boolean v9, v11, Lo/xm;->bpw:Z

    .line 592
    iput-object v11, v10, Lo/xw;->bpS:Lo/xm;

    .line 594
    move-object/from16 v0, p0

    :try_start_1c
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v10}, Ltv/periscope/android/api/ApiService;->setSettings(Lo/xw;)Lo/xx;

    move-result-object v12

    .line 595
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btA:Lo/aai$if;

    invoke-direct {v0, v1, v12}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_1c
    .catch Lretrofit/RetrofitError; {:try_start_1c .. :try_end_1c} :catch_1c

    return-object v0

    .line 596
    :catch_1c
    move-exception v12

    .line 597
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btA:Lo/aai$if;

    invoke-direct {v0, v1, v12}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 601
    :pswitch_1e
    new-instance v8, Lo/wt;

    invoke-direct {v8}, Lo/wt;-><init>()V

    .line 603
    move-object/from16 v0, p0

    :try_start_1d
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v8}, Ltv/periscope/android/api/ApiService;->getSettings(Lo/wt;)Lo/wu;

    move-result-object v9

    .line 604
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btz:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_1d
    .catch Lretrofit/RetrofitError; {:try_start_1d .. :try_end_1d} :catch_1d

    return-object v0

    .line 605
    :catch_1d
    move-exception v9

    .line 606
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btz:Lo/aai$if;

    invoke-direct {v0, v1, v9}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 610
    :pswitch_1f
    const-string v0, "e_broadcast_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 611
    const-string v0, "e_log"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 612
    new-instance v10, Lo/xk;

    invoke-direct {v10}, Lo/xk;-><init>()V

    .line 613
    iget-object v11, v10, Lo/xk;->bpu:Ljava/lang/String;

    .line 615
    move-object/from16 v0, p0

    :try_start_1e
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    new-instance v1, Lo/yf;

    const-string v2, "log.txt"

    invoke-direct {v1, v9, v2}, Lo/yf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11, v8, v1}, Ltv/periscope/android/api/ApiService;->endBroadcast(Ljava/lang/String;Ljava/lang/String;Lo/yf;)Lo/we;

    move-result-object v12

    .line 617
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btB:Lo/aai$if;

    invoke-direct {v0, v1, v12}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_1e
    .catch Lretrofit/RetrofitError; {:try_start_1e .. :try_end_1e} :catch_1e

    return-object v0

    .line 618
    :catch_1e
    move-exception v12

    .line 619
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btB:Lo/aai$if;

    invoke-direct {v0, v1, v12}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 623
    :pswitch_20
    const-string v0, "e_broadcast_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 624
    const-string v0, "e_log"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 625
    new-instance v10, Lo/xk;

    invoke-direct {v10}, Lo/xk;-><init>()V

    .line 626
    iget-object v11, v10, Lo/xk;->bpu:Ljava/lang/String;

    .line 628
    move-object/from16 v0, p0

    :try_start_1f
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    new-instance v1, Lo/yf;

    const-string v2, "log.txt"

    invoke-direct {v1, v9, v2}, Lo/yf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11, v8, v1}, Ltv/periscope/android/api/ApiService;->pingBroadcast(Ljava/lang/String;Ljava/lang/String;Lo/yf;)Lo/xf;

    move-result-object v12

    .line 630
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btC:Lo/aai$if;

    invoke-direct {v0, v1, v12}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_1f
    .catch Lretrofit/RetrofitError; {:try_start_1f .. :try_end_1f} :catch_1f

    return-object v0

    .line 631
    :catch_1f
    move-exception v12

    .line 632
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btC:Lo/aai$if;

    invoke-direct {v0, v1, v12}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 636
    :pswitch_21
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lo/vq;->ʽ(Landroid/os/Bundle;)Lo/aai;

    move-result-object v0

    return-object v0

    .line 639
    :pswitch_22
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lo/vq;->ͺ(Landroid/os/Bundle;)Lo/aai;

    move-result-object v0

    return-object v0

    .line 642
    :pswitch_23
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lo/vq;->ι(Landroid/os/Bundle;)Lo/aai;

    move-result-object v0

    return-object v0

    .line 645
    :pswitch_24
    const-string v0, "e_broadcast_id"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 646
    new-instance v9, Lo/vw;

    invoke-direct {v9}, Lo/vw;-><init>()V

    .line 647
    iput-object v8, v9, Lo/vw;->bnh:Ljava/lang/String;

    .line 649
    move-object/from16 v0, p0

    :try_start_20
    iget-object v0, v0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v9}, Ltv/periscope/android/api/ApiService;->broadcastSummary(Lo/vw;)Lo/vx;

    move-result-object v10

    .line 650
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btD:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_20
    .catch Lretrofit/RetrofitError; {:try_start_20 .. :try_end_20} :catch_20

    return-object v0

    .line 651
    :catch_20
    move-exception v10

    .line 652
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btD:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 656
    :pswitch_25
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lo/vq;->ʾ(Landroid/os/Bundle;)Lo/aai;

    move-result-object v0

    return-object v0

    .line 660
    :pswitch_26
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lo/vq;->ʿ(Landroid/os/Bundle;)Lo/aai;

    move-result-object v0

    return-object v0

    .line 663
    :pswitch_27
    const-string v0, "BLOCK"

    const-string v1, "GETTING BLOCKED."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-direct/range {p0 .. p0}, Lo/vq;->uc()Lo/aai;

    move-result-object v0

    return-object v0

    .line 667
    :pswitch_28
    const-string v0, "e_token"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 668
    new-instance v9, Lo/vu;

    invoke-direct {v9}, Lo/vu;-><init>()V

    .line 669
    iput-object v8, v9, Lo/vu;->Qn:Ljava/lang/String;

    .line 671
    :try_start_21
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btH:Lo/aai$if;

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v2, v9}, Ltv/periscope/android/api/ApiService;->getBroadcastIdForShareToken(Lo/vu;)Lo/vv;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_21
    .catch Lretrofit/RetrofitError; {:try_start_21 .. :try_end_21} :catch_21

    return-object v0

    .line 673
    :catch_21
    move-exception v10

    .line 674
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btH:Lo/aai$if;

    invoke-direct {v0, v1, v10}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0

    .line 679
    :pswitch_29
    const-string v0, "e_file_dir"

    move-object/from16 v1, p2

    :try_start_22
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 680
    new-instance v9, Ljava/io/File;

    const-string v0, "padding.padding"

    invoke-direct {v9, v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 682
    new-instance v11, Ljava/io/OutputStreamWriter;

    invoke-direct {v11, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 683
    const v0, 0x3d090

    new-array v12, v0, [C

    .line 684
    invoke-virtual {v11, v12}, Ljava/io/OutputStreamWriter;->write([C)V

    .line 685
    new-instance v13, Lretrofit/mime/TypedFile;

    const-string v0, "multipart/form-data"

    invoke-direct {v13, v0, v9}, Lretrofit/mime/TypedFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_23

    move-result-wide v14

    .line 689
    :try_start_23
    invoke-static {}, Lo/vf;->tJ()Lo/zx;

    move-result-object v0

    invoke-virtual {v0}, Lo/zx;->ve()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lo/adb;->ˊ(Ljava/lang/String;Lretrofit/mime/TypedFile;)Lo/yi;

    move-result-object v16

    .line 691
    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->flush()V

    .line 692
    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v14

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v17, v0, v1

    .line 694
    const v0, 0x48742400    # 250000.0f

    div-float v0, v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lo/yi;->bqf:F

    .line 695
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btI:Lo/aai$if;

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_23
    .catch Lretrofit/RetrofitError; {:try_start_23 .. :try_end_23} :catch_22
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_23

    return-object v0

    .line 696
    :catch_22
    move-exception v16

    .line 697
    :try_start_24
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btI:Lo/aai$if;

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_23

    return-object v0

    .line 699
    :catch_23
    move-exception v8

    .line 700
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btI:Lo/aai$if;

    invoke-direct {v0, v1, v8}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Exception;)V

    return-object v0

    .line 704
    :goto_2
    :pswitch_2a
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_7
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_21
        :pswitch_28
        :pswitch_29
        :pswitch_22
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method

.method private ᐝ(Lretrofit/RetrofitError;)Z
    .locals 2

    .line 171
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v1

    .line 173
    const/16 v0, 0x1f4

    if-lt v1, v0, :cond_0

    const/16 v0, 0x258

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 175
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ι(Landroid/os/Bundle;)Lo/aai;
    .locals 4

    .line 755
    new-instance v2, Lo/wn;

    invoke-direct {v2}, Lo/wn;-><init>()V

    .line 756
    const-string v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lo/wn;->id:Ljava/lang/String;

    .line 758
    :try_start_0
    iget-object v0, p0, Lo/vq;->bnN:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v2}, Ltv/periscope/android/api/ApiService;->getBroadcastShareUrl(Lo/wn;)Lo/wo;

    move-result-object v3

    .line 759
    iget-object v0, v2, Lo/wn;->id:Ljava/lang/String;

    iput-object v0, v3, Lo/wo;->id:Ljava/lang/String;

    .line 760
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btn:Lo/aai$if;

    invoke-direct {v0, v1, v3}, Lo/aai;-><init>(Lo/aai$if;Ljava/lang/Object;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 761
    :catch_0
    move-exception v3

    .line 762
    new-instance v0, Lo/aai;

    sget-object v1, Lo/aai$if;->btn:Lo/aai$if;

    invoke-direct {v0, v1, v3}, Lo/aai;-><init>(Lo/aai$if;Lretrofit/RetrofitError;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 140
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 141
    iget v0, p0, Lo/vq;->bnO:I

    iget-object v1, p0, Lo/vq;->bnP:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lo/vq;->ᐝ(ILandroid/os/Bundle;)Lo/aai;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lo/aai;->vA()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-direct {p0, v0}, Lo/vq;->ᐝ(Lretrofit/RetrofitError;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v4, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-direct {p0, v0}, Lo/vq;->ʻ(Lretrofit/RetrofitError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :cond_0
    const-string v0, "PsApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A problem was detected for action code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/vq;->bnO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Retrying. Num retries left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/vq;->bnS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Current backoff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lo/vq;->bnQ:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lo/vq;->bnS:I

    if-gtz v0, :cond_1

    .line 149
    const-string v0, "PsApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No retries remaining for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/vq;->bnO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Posting error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lo/vq;->bny:Lo/ot;

    invoke-virtual {v0, v4}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 151
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lo/vq;->bnS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/vq;->bnS:I

    .line 154
    iget-wide v0, p0, Lo/vq;->bnQ:J

    iget-wide v2, p0, Lo/vq;->bnR:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/vq;->bnQ:J

    .line 155
    iget-object v0, p0, Lo/vq;->bny:Lo/ot;

    new-instance v1, Lo/aam;

    invoke-direct {v1, p0}, Lo/aam;-><init>(Lo/vq;)V

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_2
    const-string v0, "PsApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No problems detected for action code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/vq;->bnO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Num retries left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/vq;->bnS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Current backoff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lo/vq;->bnQ:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz v4, :cond_3

    .line 160
    iget-object v0, p0, Lo/vq;->bny:Lo/ot;

    invoke-virtual {v0, v4}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 163
    :cond_3
    :goto_0
    return-void
.end method

.method public ub()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lo/vq;->bnQ:J

    return-wide v0
.end method
