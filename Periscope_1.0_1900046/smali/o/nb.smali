.class Lo/nb;
.super Lo/ms;
.source ""


# static fields
.field static final QK:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.twitter.android"

    const-string v2, "com.twitter.android.SingleSignOnActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/nb;->QK:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/lz;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/lz<Lo/mr;>;I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lo/ms;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/lz;I)V

    .line 61
    return-void
.end method

.method public static ˆ(Landroid/content/Context;)Z
    .locals 1

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lo/nb;->ˎ(Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method

.method private static ˎ(Landroid/content/pm/PackageManager;)Z
    .locals 7

    .line 110
    const-string v0, "com.twitter.android"

    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v3

    .line 112
    const/4 v0, 0x0

    return v0

    .line 115
    :goto_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 116
    const-string v0, "3082025d308201c6a00302010202044bd76cce300d06092a864886f70d01010505003073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e6420526563686973301e170d3130303432373233303133345a170d3438303832353233303133345a3073310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f31163014060355040a130d547769747465722c20496e632e310f300d060355040b13064d6f62696c65311630140603550403130d4c656c616e642052656368697330819f300d06092a864886f70d010101050003818d003081890281810086233c2e51c62232d49cc932e470713d63a6a1106b38f9e442e01bc79ca4f95c72b2cb3f1369ef7dea6036bff7c4b2828cb3787e7657ad83986751ced5b131fcc6f413efb7334e32ed9787f9e9a249ae108fa66009ac7a7932c25d37e1e07d4f9f66aa494c270dbac87d261c9668d321c2fba4ef2800e46671a597ff2eac5d7f0203010001300d06092a864886f70d0101050500038181003e1f01cb6ea8be8d2cecef5cd2a64c97ba8728aa5f08f8275d00508d64d139b6a72c5716b40a040df0eeeda04de9361107e123ee8d3dc05e70c8a355f46dbadf1235443b0b214c57211afd4edd147451c443d49498d2a7ff27e45a99c39b9e47429a1dae843ba233bf8ca81296dbe1dc5c5434514d995b0279246809392a219b"

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 120
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ˑ(Landroid/app/Activity;)Z
    .locals 8

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 71
    invoke-static {v4}, Lo/nb;->ˎ(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "SSO app signature check failed"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_0
    :try_start_0
    sget-object v0, Lo/nb;->QK:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 81
    goto :goto_0

    .line 78
    :catch_0
    move-exception v5

    .line 79
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "SSO auth activity not found"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    const/4 v0, 0x0

    return v0

    .line 83
    :goto_0
    invoke-virtual {p0}, Lo/nb;->be()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v5

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lo/nb;->QK:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 85
    const-string v0, "ck"

    invoke-virtual {v5}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cs"

    invoke-virtual {v5}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->bb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :try_start_1
    iget v0, p0, Lo/nb;->Qx:I

    invoke-virtual {p1, v6, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    const/4 v0, 0x1

    return v0

    .line 91
    :catch_1
    move-exception v7

    .line 92
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "SSO exception occurred"

    invoke-interface {v0, v1, v2, v7}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public ˌ(Landroid/app/Activity;)Z
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lo/nb;->ˑ(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
