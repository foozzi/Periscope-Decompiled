.class public final Lo/ᵒ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ו;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u05d5<Landroid/support/v4/view/ViewPager$SavedState;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .line 1241
    invoke-virtual {p0, p1, p2}, Lo/ᵒ;->ˊ(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1241
    invoke-virtual {p0, p1}, Lo/ᵒ;->ՙ(I)[Landroid/support/v4/view/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/ViewPager$SavedState;
    .locals 1

    .line 1244
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public ՙ(I)[Landroid/support/v4/view/ViewPager$SavedState;
    .locals 1

    .line 1248
    new-array v0, p1, [Landroid/support/v4/view/ViewPager$SavedState;

    return-object v0
.end method
