.class public final Lo/ḯ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 380
    invoke-virtual {p0, p1}, Lo/ḯ;->ᐝ(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 380
    invoke-virtual {p0, p1}, Lo/ḯ;->ᔈ(I)[Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public ᐝ(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;
    .locals 1

    .line 382
    new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public ᔈ(I)[Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;
    .locals 1

    .line 386
    new-array v0, p1, [Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    return-object v0
.end method
