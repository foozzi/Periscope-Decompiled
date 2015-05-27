.class public final Lcom/google/android/gms/maps/model/internal/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/dn;


# instance fields
.field private final BH:I

.field private JI:Landroid/os/Bundle;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/dn;

    invoke-direct {v0}, Lo/dn;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/internal/zzc;->CREATOR:Lo/dn;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/internal/zzc;->BH:I

    iput p2, p0, Lcom/google/android/gms/maps/model/internal/zzc;->type:I

    iput-object p3, p0, Lcom/google/android/gms/maps/model/internal/zzc;->JI:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/zzc;->type:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/dn;->ˊ(Lcom/google/android/gms/maps/model/internal/zzc;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/zzc;->BH:I

    return v0
.end method

.method public ﱡ()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/zzc;->JI:Landroid/os/Bundle;

    return-object v0
.end method
