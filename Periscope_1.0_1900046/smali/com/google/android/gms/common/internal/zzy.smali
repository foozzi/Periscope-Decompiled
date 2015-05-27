.class public Lcom/google/android/gms/common/internal/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/google/android/gms/common/internal/zzy;>;"
        }
    .end annotation
.end field


# instance fields
.field public final BH:I

.field private final Cc:Landroid/accounts/Account;

.field private final EO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ﻋ;

    invoke-direct {v0}, Lo/ﻋ;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzy;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzy;->Cc:Landroid/accounts/Account;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzy;->EO:I

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/common/internal/zzy;-><init>(ILandroid/accounts/Account;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zzy;->EO:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/ﻋ;->ˊ(Lcom/google/android/gms/common/internal/zzy;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ᒱ()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzy;->Cc:Landroid/accounts/Account;

    return-object v0
.end method
