.class public Lcom/google/android/gms/location/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/bi;

.field public static final HL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroid/location/Location;>;"
        }
    .end annotation
.end field


# instance fields
.field private final BH:I

.field public HM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroid/location/Location;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/zzh;->HL:Ljava/util/List;

    new-instance v0, Lo/bi;

    invoke-direct {v0}, Lo/bi;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/zzh;->CREATOR:Lo/bi;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/List<Landroid/location/Location;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/zzh;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/location/zzh;->HM:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    instance-of v0, p1, Lcom/google/android/gms/location/zzh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/location/zzh;

    move-object v4, v0

    iget-object v0, v4, Lcom/google/android/gms/location/zzh;->HM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/location/zzh;->HM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, v4, Lcom/google/android/gms/location/zzh;->HM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/location/zzh;->HM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    move-object v7, v0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    move-object v8, v0

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 8

    const/16 v2, 0x11

    iget-object v0, p0, Lcom/google/android/gms/location/zzh;->HM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    const/16 v0, 0x20

    ushr-long v0, v5, v0

    xor-long/2addr v0, v5

    long-to-int v7, v0

    mul-int/lit8 v0, v2, 0x1f

    add-int v2, v0, v7

    goto :goto_0

    :cond_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LocationResult[success: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/zzh;->н()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", locations: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/zzh;->HM:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/bi;->ˊ(Lcom/google/android/gms/location/zzh;Landroid/os/Parcel;I)V

    return-void
.end method

.method public н()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/zzh;->HM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/zzh;->BH:I

    return v0
.end method
