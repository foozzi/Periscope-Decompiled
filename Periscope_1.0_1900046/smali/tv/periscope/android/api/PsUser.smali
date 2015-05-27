.class public Ltv/periscope/android/api/PsUser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public Sp:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "created_at"
    .end annotation
.end field

.field private bnl:I
    .annotation runtime Lo/go;
        value = "participant_index"
    .end annotation
.end field

.field public boD:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "updated_at"
    .end annotation
.end field

.field public bon:I
    .annotation runtime Lo/go;
        value = "n_hearts"
    .end annotation
.end field

.field public bpA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ltv/periscope/android/api/PsProfileImageUrls;>;"
        }
    .end annotation

    .annotation runtime Lo/go;
        value = "profile_image_urls"
    .end annotation
.end field

.field public bpB:I
    .annotation runtime Lo/go;
        value = "n_followers"
    .end annotation
.end field

.field public bpC:I
    .annotation runtime Lo/go;
        value = "n_following"
    .end annotation
.end field

.field public bpD:I
    .annotation runtime Lo/go;
        value = "n_blocked"
    .end annotation
.end field

.field public bpE:Z
    .annotation runtime Lo/go;
        value = "is_following"
    .end annotation
.end field

.field public bpF:Z
    .annotation runtime Lo/go;
        value = "is_blocked"
    .end annotation
.end field

.field public bpG:Z
    .annotation runtime Lo/go;
        value = "is_employee"
    .end annotation
.end field

.field private bpH:I
    .annotation runtime Lo/go;
        value = "n_hearts_given"
    .end annotation
.end field

.field public bpI:Z
    .annotation runtime Lo/go;
        value = "is_twitter_verified"
    .end annotation
.end field

.field public bpJ:Ljava/lang/String;

.field public bpx:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "username"
    .end annotation
.end field

.field public bpy:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "display_name"
    .end annotation
.end field

.field public bpz:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "initials"
    .end annotation
.end field

.field public className:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "class_name"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "description"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lo/xn;

    invoke-direct {v0}, Lo/xn;-><init>()V

    sput-object v0, Ltv/periscope/android/api/PsUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->className:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->Sp:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->boD:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->bpz:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->description:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->bpA:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/api/PsUser;->bpB:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/api/PsUser;->bpC:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ltv/periscope/android/api/PsUser;->bpE:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Ltv/periscope/android/api/PsUser;->bpF:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/api/PsUser;->bon:I

    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public uj()Ljava/lang/String;
    .locals 3

    .line 126
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->bpA:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->bpJ:Ljava/lang/String;

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->bpJ:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->bpA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->bpA:Ljava/util/ArrayList;

    iget-object v1, p0, Ltv/periscope/android/api/PsUser;->bpA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsProfileImageUrls;

    iget-object v0, v0, Ltv/periscope/android/api/PsProfileImageUrls;->url:Ljava/lang/String;

    iput-object v0, p0, Ltv/periscope/android/api/PsUser;->bpJ:Ljava/lang/String;

    .line 132
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->bpJ:Ljava/lang/String;

    return-object v0
.end method

.method public uk()I
    .locals 1

    .line 136
    iget v0, p0, Ltv/periscope/android/api/PsUser;->bon:I

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_0
    iget v0, p0, Ltv/periscope/android/api/PsUser;->bon:I

    return v0
.end method

.method public ul()I
    .locals 1

    .line 150
    iget v0, p0, Ltv/periscope/android/api/PsUser;->bnl:I

    return v0
.end method

.method public um()I
    .locals 1

    .line 158
    iget v0, p0, Ltv/periscope/android/api/PsUser;->bpH:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 99
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->Sp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->boD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->bpz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Ltv/periscope/android/api/PsUser;->bpA:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 108
    iget v0, p0, Ltv/periscope/android/api/PsUser;->bpB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Ltv/periscope/android/api/PsUser;->bpC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean v0, p0, Ltv/periscope/android/api/PsUser;->bpE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Ltv/periscope/android/api/PsUser;->bpF:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Ltv/periscope/android/api/PsUser;->bon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return-void
.end method
