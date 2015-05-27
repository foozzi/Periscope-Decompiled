.class public final Lcom/google/android/gms/common/api/Status;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lo/ᒹ;


# static fields
.field public static final CREATOR:Lo/ᔬ;

.field public static final Cu:Lcom/google/android/gms/common/api/Status;

.field public static final Cv:Lcom/google/android/gms/common/api/Status;

.field public static final Cw:Lcom/google/android/gms/common/api/Status;

.field public static final Cx:Lcom/google/android/gms/common/api/Status;

.field public static final Cy:Lcom/google/android/gms/common/api/Status;


# instance fields
.field private final BH:I

.field private final BI:I

.field private final BJ:Landroid/app/PendingIntent;

.field private final Cz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->Cu:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->Cv:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->Cw:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->Cx:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->Cy:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lo/ᔬ;

    invoke-direct {v0}, Lo/ᔬ;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lo/ᔬ;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/Status;->BH:I

    iput p2, p0, Lcom/google/android/gms/common/api/Status;->BI:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/Status;->Cz:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/common/api/Status;->BJ:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private ס()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->Cz:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->Cz:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->BI:I

    invoke-static {v0}, Lo/ᒱ;->ڊ(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/common/api/Status;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    move-object v2, v0

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->BH:I

    iget v1, v2, Lcom/google/android/gms/common/api/Status;->BH:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->BI:I

    iget v1, v2, Lcom/google/android/gms/common/api/Status;->BI:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->Cz:Ljava/lang/String;

    iget-object v1, v2, Lcom/google/android/gms/common/api/Status;->Cz:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/ﺟ;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->BJ:Landroid/app/PendingIntent;

    iget-object v1, v2, Lcom/google/android/gms/common/api/Status;->BJ:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lo/ﺟ;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->BI:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->BH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->BI:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->Cz:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->BJ:Landroid/app/PendingIntent;

    const/4 v2, 0x3

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

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Status;->ס()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ﺟ$if;->ˊ(Ljava/lang/String;Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->BJ:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lo/ﺟ$if;->ˊ(Ljava/lang/String;Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﺟ$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/ᔬ;->ˊ(Lcom/google/android/gms/common/api/Status;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ˊ(Landroid/app/Activity;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->Դ()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->BJ:Landroid/app/PendingIntent;

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

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->BJ:Landroid/app/PendingIntent;

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

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->BI:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public হ()Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p0
.end method

.method public ค()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->BJ:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public ฅ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->Cz:Ljava/lang/String;

    return-object v0
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->BH:I

    return v0
.end method
