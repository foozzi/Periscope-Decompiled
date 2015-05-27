.class public Landroid/support/v7/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Landroid/support/v7/widget/LinearLayoutManager$SavedState;>;"
        }
    .end annotation
.end field


# instance fields
.field סּ:I

.field ףּ:I

.field ﭖ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1953
    new-instance v0, Lo/ῐ;

    invoke-direct {v0}, Lo/ῐ;-><init>()V

    sput-object v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1919
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->סּ:I

    .line 1923
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ףּ:I

    .line 1924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ﭖ:Z

    .line 1925
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V
    .locals 1

    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1928
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->סּ:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->סּ:I

    .line 1929
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ףּ:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ףּ:I

    .line 1930
    iget-boolean v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ﭖ:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ﭖ:Z

    .line 1931
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1943
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1948
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->סּ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1949
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ףּ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1950
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ﭖ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1951
    return-void
.end method

.method ۃ()Z
    .locals 1

    .line 1934
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->סּ:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ৳()V
    .locals 1

    .line 1938
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->סּ:I

    .line 1939
    return-void
.end method
