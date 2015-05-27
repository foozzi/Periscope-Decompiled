.class public Lcom/google/android/gms/internal/zzpg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/y;

.field public static final Gl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/google/android/gms/internal/zzox;>;"
        }
    .end annotation
.end field


# instance fields
.field private final BH:I

.field public Gm:Lcom/google/android/gms/location/LocationRequest;

.field public Gn:Z

.field public Go:Z

.field public Gp:Z

.field public Gq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/google/android/gms/internal/zzox;>;"
        }
    .end annotation
.end field

.field public final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->Gl:Ljava/util/List;

    new-instance v0, Lo/y;

    invoke-direct {v0}, Lo/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->CREATOR:Lo/y;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/location/LocationRequest;ZZZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILcom/google/android/gms/location/LocationRequest;ZZZLjava/util/List<Lcom/google/android/gms/internal/zzox;>;Ljava/lang/String;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzpg;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpg;->Gm:Lcom/google/android/gms/location/LocationRequest;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzpg;->Gn:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzpg;->Go:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzpg;->Gp:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzpg;->Gq:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzpg;->mTag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 8

    move-object v0, p0

    move-object v2, p2

    sget-object v6, Lcom/google/android/gms/internal/zzpg;->Gl:Ljava/util/List;

    move-object v7, p1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzpg;-><init>(ILcom/google/android/gms/location/LocationRequest;ZZZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzpg;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzpg;->ˊ(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzpg;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzpg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzpg;-><init>(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)V

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

    instance-of v0, p1, Lcom/google/android/gms/internal/zzpg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzpg;

    move-object v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->Gm:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, v2, Lcom/google/android/gms/internal/zzpg;->Gm:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v0, v1}, Lo/ﺟ;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpg;->Gn:Z

    iget-boolean v1, v2, Lcom/google/android/gms/internal/zzpg;->Gn:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpg;->Go:Z

    iget-boolean v1, v2, Lcom/google/android/gms/internal/zzpg;->Go:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpg;->Gp:Z

    iget-boolean v1, v2, Lcom/google/android/gms/internal/zzpg;->Gp:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->Gq:Ljava/util/List;

    iget-object v1, v2, Lcom/google/android/gms/internal/zzpg;->Gq:Ljava/util/List;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->Gm:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->Gm:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requestNlpDebugInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpg;->Gn:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " restorePendingIntentListeners="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpg;->Go:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " triggerUpdate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpg;->Gp:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " clients="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->Gq:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " tag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/y;->ˊ(Lcom/google/android/gms/internal/zzpg;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpg;->BH:I

    return v0
.end method
