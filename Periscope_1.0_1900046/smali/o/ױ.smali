.class public final Lo/ױ;
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
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 738
    invoke-virtual {p0, p1}, Lo/ױ;->ʻ(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 738
    invoke-virtual {p0, p1}, Lo/ױ;->ǃ(I)[Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public ǃ(I)[Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;
    .locals 1

    .line 744
    new-array v0, p1, [Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    return-object v0
.end method

.method public ʻ(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;
    .locals 2

    .line 740
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;-><init>(Landroid/os/Parcel;Lo/ʅ;)V

    return-object v0
.end method
