.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final BG:Lcom/google/android/gms/common/ConnectionResult;

.field public static final CREATOR:Lo/โ;


# instance fields
.field public final BH:I

.field private final BI:I

.field private final BJ:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->BG:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lo/โ;

    invoke-direct {v0}, Lo/โ;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Lo/โ;

    return-void
.end method

.method public constructor <init>(IILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->BH:I

    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->BI:I

    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->BJ:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;)V

    return-void
.end method

.method private ס()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->BI:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

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
    const-string v0, "CANCELED"

    return-object v0

    :pswitch_d
    const-string v0, "TIMEOUT"

    return-object v0

    :pswitch_e
    const-string v0, "INTERRUPTED"

    return-object v0

    :pswitch_f
    const-string v0, "API_UNAVAILABLE"

    return-object v0

    :pswitch_10
    const-string v0, "SIGN_IN_FAILED"

    return-object v0

    :goto_0
    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->BI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
        :pswitch_11
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    move-object v2, v0

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->BI:I

    iget v1, v2, Lcom/google/android/gms/common/ConnectionResult;->BI:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->BJ:Landroid/app/PendingIntent;

    iget-object v1, v2, Lcom/google/android/gms/common/ConnectionResult;->BJ:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lo/ﺟ;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->BI:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->BI:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->BJ:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/ﺟ;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lo/ﺟ;->ᔇ(Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    const-string v1, "statusCode"

    invoke-direct {p0}, Lcom/google/android/gms/common/ConnectionResult;->ס()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ﺟ$if;->ˊ(Ljava/lang/String;Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->BJ:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lo/ﺟ$if;->ˊ(Ljava/lang/String;Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﺟ$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/โ;->ˊ(Lcom/google/android/gms/common/ConnectionResult;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ˊ(Landroid/app/Activity;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->Դ()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->BJ:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public Դ()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->BI:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->BJ:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public չ()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->BI:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ט()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->BJ:Landroid/app/PendingIntent;

    return-object v0
.end method
