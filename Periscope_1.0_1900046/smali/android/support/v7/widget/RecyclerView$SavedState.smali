.class public Landroid/support/v7/widget/RecyclerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Landroid/support/v7/widget/RecyclerView$SavedState;>;"
        }
    .end annotation
.end field


# instance fields
.field bc:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7972
    new-instance v0, Lo/ﻟ;

    invoke-direct {v0}, Lo/ﻟ;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7951
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 7952
    const-class v0, Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$SavedState;->bc:Landroid/os/Parcelable;

    .line 7953
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 7959
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 7960
    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$SavedState;)V
    .locals 1

    .line 7969
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;->bc:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$SavedState;->bc:Landroid/os/Parcelable;

    .line 7970
    return-void
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V
    .locals 0

    .line 7943
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$SavedState;->ˊ(Landroid/support/v7/widget/RecyclerView$SavedState;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 7964
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7965
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SavedState;->bc:Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7966
    return-void
.end method
