.class public Lcom/google/android/gms/internal/zzpk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/aa;


# instance fields
.field private final BH:I

.field private final GA:F

.field private final GB:I

.field private final GC:I

.field private final GD:I

.field private final Gv:Ljava/lang/String;

.field private final Gw:J

.field private final Gx:S

.field private final Gy:D

.field private final Gz:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/aa;

    invoke-direct {v0}, Lo/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpk;->CREATOR:Lo/aa;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ISDDFJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzpk;->ᵗ(Ljava/lang/String;)V

    invoke-static {p9}, Lcom/google/android/gms/internal/zzpk;->ﾞ(F)V

    invoke-static {p5, p6, p7, p8}, Lcom/google/android/gms/internal/zzpk;->ˊ(DD)V

    invoke-static {p3}, Lcom/google/android/gms/internal/zzpk;->一(I)I

    move-result p3

    iput p1, p0, Lcom/google/android/gms/internal/zzpk;->BH:I

    iput-short p4, p0, Lcom/google/android/gms/internal/zzpk;->Gx:S

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpk;->Gv:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzpk;->Gy:D

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzpk;->Gz:D

    iput p9, p0, Lcom/google/android/gms/internal/zzpk;->GA:F

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzpk;->Gw:J

    iput p3, p0, Lcom/google/android/gms/internal/zzpk;->GB:I

    iput p12, p0, Lcom/google/android/gms/internal/zzpk;->GC:I

    iput p13, p0, Lcom/google/android/gms/internal/zzpk;->GD:I

    return-void
.end method

.method private static ˊ(DD)V
    .locals 3

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_2

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private static ᵗ(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestId is null or too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static 一(I)I
    .locals 4

    and-int/lit8 v3, p0, 0x7

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No supported transition specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v3
.end method

.method private static גּ(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "CIRCLE"

    return-object v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method private static ﾞ(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzpk;->CREATOR:Lo/aa;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/zzpk;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzpk;

    move-object v4, v0

    iget v0, p0, Lcom/google/android/gms/internal/zzpk;->GA:F

    iget v1, v4, Lcom/google/android/gms/internal/zzpk;->GA:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpk;->Gy:D

    iget-wide v2, v4, Lcom/google/android/gms/internal/zzpk;->Gy:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpk;->Gz:D

    iget-wide v2, v4, Lcom/google/android/gms/internal/zzpk;->Gz:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    iget-short v0, p0, Lcom/google/android/gms/internal/zzpk;->Gx:S

    iget-short v1, v4, Lcom/google/android/gms/internal/zzpk;->Gx:S

    if-eq v0, v1, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpk;->Gy:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpk;->Gz:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v3, 0x1f

    const/4 v4, 0x1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpk;->Gy:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    const/16 v0, 0x20

    ushr-long v0, v5, v0

    xor-long/2addr v0, v5

    long-to-int v0, v0

    add-int/lit8 v4, v0, 0x1f

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpk;->Gz:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzpk;->GA:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int v4, v0, v1

    mul-int/lit8 v0, v4, 0x1f

    iget-short v1, p0, Lcom/google/android/gms/internal/zzpk;->Gx:S

    add-int v4, v0, v1

    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzpk;->GB:I

    add-int v4, v0, v1

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Lcom/google/android/gms/internal/zzpk;->Gx:S

    invoke-static {v3}, Lcom/google/android/gms/internal/zzpk;->גּ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpk;->Gv:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/gms/internal/zzpk;->GB:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzpk;->Gy:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzpk;->Gz:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/gms/internal/zzpk;->GA:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/gms/internal/zzpk;->GC:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/gms/internal/zzpk;->GD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzpk;->Gw:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzpk;->CREATOR:Lo/aa;

    invoke-static {p0, p1, p2}, Lo/aa;->ˊ(Lcom/google/android/gms/internal/zzpk;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpk;->BH:I

    return v0
.end method

.method public ｳ()S
    .locals 1

    iget-short v0, p0, Lcom/google/android/gms/internal/zzpk;->Gx:S

    return v0
.end method

.method public ｷ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpk;->GA:F

    return v0
.end method

.method public ｸ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk;->Gv:Ljava/lang/String;

    return-object v0
.end method

.method public ｹ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzpk;->Gw:J

    return-wide v0
.end method

.method public ｽ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpk;->GB:I

    return v0
.end method

.method public ﾁ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpk;->GC:I

    return v0
.end method

.method public ﾊ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpk;->GD:I

    return v0
.end method
