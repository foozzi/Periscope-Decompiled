.class public final Lo/ძ;
.super Ljava/lang/Object;


# static fields
.field public static BL:Z

.field public static BM:Z

.field private static BN:I

.field private static final BO:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lo/ძ;->BL:Z

    const/4 v0, 0x0

    sput-boolean v0, Lo/ძ;->BM:Z

    const/4 v0, -0x1

    sput v0, Lo/ძ;->BN:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/ძ;->BO:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʻ(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lo/ძ;->ˊ(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lo/ห$if;->common_google_play_services_install_text_tablet:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget v0, Lo/ห$if;->common_google_play_services_install_text_phone:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v2, v3

    goto :goto_2

    :sswitch_1
    sget v0, Lo/ห$if;->common_google_play_services_enable_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_2
    sget v0, Lo/ห$if;->common_google_play_services_update_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_3
    sget v0, Lo/ห$if;->common_android_wear_update_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_4
    sget v0, Lo/ห$if;->common_google_play_services_unsupported_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_5
    sget v0, Lo/ห$if;->common_google_play_services_network_error_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_6
    sget v0, Lo/ห$if;->common_google_play_services_invalid_account_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_7
    sget v0, Lo/ห$if;->commono_google_play_services_api_unavailable_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_8
    sget v0, Lo/ห$if;->common_google_play_services_sign_in_failed_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_1
    sget v0, Lo/ห$if;->common_google_play_services_unknown_issue:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0x9 -> :sswitch_4
        0x10 -> :sswitch_7
        0x11 -> :sswitch_8
        0x2a -> :sswitch_3
    .end sparse-switch
.end method

.method public static ʼ(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v0, Lo/ห$if;->common_google_play_services_install_button:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_1
    sget v0, Lo/ห$if;->common_google_play_services_enable_button:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_2
    sget v0, Lo/ห$if;->common_google_play_services_update_button:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_0
    const v0, 0x104000a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method public static ʽ(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-static {p0, v0}, Lo/ძ;->ˏ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ˊ(ILandroid/app/Activity;I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lo/ძ;->ˊ(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lo/ძ;->ˊ(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 7

    invoke-static {p1}, Lo/e;->ⁱ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2a

    :cond_0
    const/4 v3, 0x0

    invoke-static {}, Lo/f;->ﻌ()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010309

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "Theme.Dialog.Alert"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x5

    invoke-direct {v3, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p1, p0}, Lo/ძ;->ʻ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_3

    invoke-virtual {v3, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-static {p0}, Lo/ძ;->г(I)Landroid/content/Intent;

    move-result-object v4

    if-nez p2, :cond_4

    new-instance v5, Lo/ァ;

    invoke-direct {v5, p1, v4, p3}, Lo/ァ;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    new-instance v5, Lo/ァ;

    invoke-direct {v5, p2, v4, p3}, Lo/ァ;-><init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    :goto_0
    invoke-static {p1, p0}, Lo/ძ;->ʼ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget v0, Lo/ห$if;->common_google_play_services_install_title:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget v0, Lo/ห$if;->common_google_play_services_enable_title:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_4
    sget v0, Lo/ห$if;->common_google_play_services_update_title:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget v0, Lo/ห$if;->common_android_wear_update_title:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_6
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services is invalid. Cannot recover."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lo/ห$if;->common_google_play_services_unsupported_title:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_7
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Network error occurred. Please retry request later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lo/ห$if;->common_google_play_services_network_error_title:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Internal error occurred. Please see logs for detailed information"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_9
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Developer error occurred. Please see logs for detailed information"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_a
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lo/ห$if;->common_google_play_services_invalid_account_title:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_b
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "The application is not licensed to the user."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_c
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "One of the API components you attempted to connect to is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_d
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "The specified account could not be signed in."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lo/ห$if;->common_google_play_services_sign_in_failed_title:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :goto_1
    :pswitch_e
    const-string v0, "GooglePlayServicesUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_5
    .end packed-switch
.end method

.method public static ˊ(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 4

    invoke-static {}, Lo/f;->ﻢ()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    move-object v1, v0

    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_2

    aget-object v0, v2, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static ˊ(Landroid/content/pm/PackageManager;)Z
    .locals 7

    sget-object v4, Lo/ძ;->BO:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget v0, Lo/ძ;->BN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "com.google.android.gms"

    const/16 v1, 0x40

    :try_start_1
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-static {}, Lo/ףּ;->ぃ()Lo/ףּ;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lo/ﻌ$if;

    sget-object v2, Lo/ﻌ;->EQ:[Lo/ﻌ$if;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v5, v1}, Lo/ףּ;->ˊ(Landroid/content/pm/PackageInfo;[Lo/ﻌ$if;)Lo/ﻌ$if;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput v0, Lo/ძ;->BN:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput v0, Lo/ძ;->BN:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v5

    const/4 v0, 0x0

    :try_start_2
    sput v0, Lo/ძ;->BN:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v4

    throw v6

    :goto_2
    sget v0, Lo/ძ;->BN:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static ˊ(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lo/ףּ;->ぃ()Lo/ףּ;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lo/ףּ;->ˊ(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ˊ(Landroid/content/res/Resources;)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lo/f;->ﺧ()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {p0}, Lo/ძ;->ˋ(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static ˋ(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 6

    invoke-static {p0, p1, p2, p3, p4}, Lo/ძ;->ˊ(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    instance-of v2, p1, Lo/ι;

    nop

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lo/ι;

    invoke-virtual {v0}, Lo/ι;->getSupportFragmentManager()Lo/ˈ;

    move-result-object v4

    invoke-static {v3, p4}, Lo/ᐵ;->ˋ(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lo/ᐵ;

    move-result-object v5

    const-string v0, "GooglePlayServicesErrorDialog"

    invoke-virtual {v5, v4, v0}, Lo/ᐵ;->show(Lo/ˈ;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo/f;->ﺧ()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v3, p4}, Lo/ไ;->ˊ(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lo/ไ;

    move-result-object v5

    const-string v0, "GooglePlayServicesErrorDialog"

    invoke-virtual {v5, v4, v0}, Lo/ไ;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This Activity does not support Fragments."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static ˋ(Landroid/content/pm/PackageManager;)Z
    .locals 1

    invoke-static {p0}, Lo/ძ;->ˊ(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/ძ;->ף()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ˋ(Landroid/content/res/Resources;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {}, Lo/f;->ﻋ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget v0, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static ˏ(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lo/f;->Ｆ()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v0, 0x2000

    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static Ї(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "SUCCESS"

    return-object v0

    :pswitch_1
    const-string v0, "SERVICE_MISSING"

    return-object v0

    :pswitch_2
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object v0

    :pswitch_3
    const-string v0, "SERVICE_DISABLED"

    return-object v0

    :pswitch_4
    const-string v0, "SIGN_IN_REQUIRED"

    return-object v0

    :pswitch_5
    const-string v0, "INVALID_ACCOUNT"

    return-object v0

    :pswitch_6
    const-string v0, "RESOLUTION_REQUIRED"

    return-object v0

    :pswitch_7
    const-string v0, "NETWORK_ERROR"

    return-object v0

    :pswitch_8
    const-string v0, "INTERNAL_ERROR"

    return-object v0

    :pswitch_9
    const-string v0, "SERVICE_INVALID"

    return-object v0

    :pswitch_a
    const-string v0, "DEVELOPER_ERROR"

    return-object v0

    :pswitch_b
    const-string v0, "LICENSE_CHECK_FAILED"

    return-object v0

    :pswitch_c
    const-string v0, "API_UNAVAILABLE"

    return-object v0

    :goto_0
    :pswitch_d
    const-string v0, "UNKNOWN_ERROR_CODE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public static г(I)Landroid/content/Intent;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lo/צּ;->ᐟ(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :sswitch_1
    invoke-static {}, Lo/צּ;->Ἷ()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :sswitch_2
    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lo/צּ;->יִ(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x2a -> :sswitch_1
    .end sparse-switch
.end method

.method public static ף()Z
    .locals 2

    sget-boolean v0, Lo/ძ;->BL:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lo/ძ;->BM:Z

    return v0

    :cond_0
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ذ(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :goto_0
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ٴ(Landroid/content/Context;)I
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-boolean v0, Lo/々;->DL:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v0, Lo/ห$if;->common_google_play_services_unknown_issue:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-boolean v0, Lo/々;->DL:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lo/ძ;->ᴵ(Landroid/content/Context;)V

    :cond_1
    const-string v0, "com.google.android.gms"

    const/16 v1, 0x40

    :try_start_1
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services is missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :goto_1
    invoke-static {}, Lo/ףּ;->ぃ()Lo/ףּ;

    move-result-object v5

    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Lo/e;->Ị(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lo/e;->ⁱ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lo/ﻌ$ˌ;->EU:[Lo/ﻌ$if;

    invoke-virtual {v5, v4, v0}, Lo/ףּ;->ˊ(Landroid/content/pm/PackageInfo;[Lo/ﻌ$if;)Lo/ﻌ$if;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    return v0

    :cond_3
    const-string v0, "com.android.vending"

    const/16 v1, 0x40

    :try_start_2
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    goto :goto_2

    :catch_2
    move-exception v7

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play Store is missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    return v0

    :goto_2
    sget-object v0, Lo/ﻌ$ˌ;->EU:[Lo/ﻌ$if;

    invoke-virtual {v5, v6, v0}, Lo/ףּ;->ˊ(Landroid/content/pm/PackageInfo;[Lo/ﻌ$if;)Lo/ﻌ$if;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play Store signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    return v0

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Lo/ﻌ$if;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-virtual {v5, v4, v0}, Lo/ףּ;->ˊ(Landroid/content/pm/PackageInfo;[Lo/ﻌ$if;)Lo/ﻌ$if;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    return v0

    :cond_5
    const v0, 0x6c42d8

    invoke-static {v0}, Lo/e;->ᵪ(I)I

    move-result v6

    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Lo/e;->ᵪ(I)I

    move-result v7

    if-ge v7, v6, :cond_6

    const-string v0, "GooglePlayServicesUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Play services out of date.  Requires 7095000 but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_6
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v8

    goto :goto_3

    :catch_3
    move-exception v9

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services missing when getting application info."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x1

    return v0

    :goto_3
    iget-boolean v0, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_7

    const/4 v0, 0x3

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static ᐝ(Landroid/content/Context;I)Z
    .locals 2

    const-string v0, "com.google.android.gms"

    invoke-static {p0, p1, v0}, Lo/ძ;->ˊ(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-static {v0, v1}, Lo/ძ;->ˊ(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ᴵ(Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "This should never happen."

    invoke-static {v0, v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v0, "com.google.android.gms.version"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const v0, 0x6c42d8

    if-ne v5, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected 7095000 but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  You must have the"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " following declaration within the <application> element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    <meta-data android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.google.android.gms.version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ᵎ(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    move-object v1, v0

    const/16 v0, 0x28c4

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method

.method public static ᵔ(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    const-string v0, "com.google.android.gms"

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    return-object v0
.end method
