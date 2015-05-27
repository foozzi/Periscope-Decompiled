.class public Lo/qf;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected cs()Ljava/lang/String;
    .locals 1

    .line 100
    const-string v0, "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    return-object v0
.end method

.method public ᐠ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 37
    invoke-virtual {p0, p1}, Lo/qf;->ᐣ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lo/qf;->ᐩ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 43
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0, p1}, Lo/qf;->ᑊ(Landroid/content/Context;)V

    .line 47
    :cond_1
    return-object v1
.end method

.method protected ᐣ(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 51
    const/4 v4, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 56
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 57
    if-eqz v7, :cond_0

    .line 58
    const-string v0, "io.fabric.ApiKey"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 60
    if-nez v4, :cond_0

    .line 61
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Falling back to Crashlytics key lookup from Manifest"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "com.crashlytics.ApiKey"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 71
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception v5

    .line 69
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught non-fatal exception while retrieving apiKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-object v4
.end method

.method protected ᐩ(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 76
    const/4 v3, 0x0

    .line 78
    const-string v0, "io.fabric.ApiKey"

    const-string v1, "string"

    invoke-static {p1, v0, v1}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 80
    if-nez v4, :cond_0

    .line 81
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Falling back to Crashlytics key lookup from Strings"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "com.crashlytics.ApiKey"

    const-string v1, "string"

    invoke-static {p1, v0, v1}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 85
    :cond_0
    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    :cond_1
    return-object v3
.end method

.method protected ᑊ(Landroid/content/Context;)V
    .locals 3

    .line 92
    invoke-static {}, Lo/pj;->ce()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lo/qh;->ᒽ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lo/qf;->cs()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-virtual {p0}, Lo/qf;->cs()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
