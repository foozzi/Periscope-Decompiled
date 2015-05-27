.class public final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Landroid/support/v4/app/BackStackState;>;"
        }
    .end annotation
.end field


# instance fields
.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final ʿ:I

.field final ˈ:I

.field final ˑ:I

.field final ـ:Ljava/lang/CharSequence;

.field final ᐧ:I

.field final ᐨ:Ljava/lang/CharSequence;

.field final ᕀ:[I

.field final ﹳ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field final ﾞ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 176
    new-instance v0, Lo/ʻ;

    invoke-direct {v0}, Lo/ʻ;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ʿ:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ˈ:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ˑ:I

    .line 103
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->ـ:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ᐧ:I

    .line 105
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->ᐨ:Ljava/lang/CharSequence;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->ﹳ:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->ﾞ:Ljava/util/ArrayList;

    .line 108
    return-void
.end method

.method public constructor <init>(Lo/ˉ;Lo/ˎ;)V
    .locals 8

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v3, 0x0

    .line 53
    iget-object v4, p2, Lo/ˎ;->ᐝ:Lo/ˎ$if;

    .line 54
    :goto_0
    if-eqz v4, :cond_1

    .line 55
    iget-object v0, v4, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 56
    :cond_0
    iget-object v4, v4, Lo/ˎ$if;->ﹺ:Lo/ˎ$if;

    goto :goto_0

    .line 58
    :cond_1
    iget v0, p2, Lo/ˎ;->ʼ:I

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    .line 60
    iget-boolean v0, p2, Lo/ˎ;->ˉ:Z

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    iget-object v4, p2, Lo/ˎ;->ᐝ:Lo/ˎ$if;

    .line 65
    const/4 v5, 0x0

    .line 66
    :goto_1
    if-eqz v4, :cond_6

    .line 67
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    iget v2, v4, Lo/ˎ$if;->ʳ:I

    aput v2, v0, v1

    .line 68
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v2, v4, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_3

    iget-object v2, v4, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    :goto_2
    aput v2, v0, v1

    .line 69
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    iget v2, v4, Lo/ˎ$if;->ˆ:I

    aput v2, v0, v1

    .line 70
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    iget v2, v4, Lo/ˎ$if;->ˇ:I

    aput v2, v0, v1

    .line 71
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    iget v2, v4, Lo/ˎ$if;->ˡ:I

    aput v2, v0, v1

    .line 72
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    iget v2, v4, Lo/ˎ$if;->ˮ:I

    aput v2, v0, v1

    .line 73
    iget-object v0, v4, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 74
    iget-object v0, v4, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 75
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    aput v6, v0, v1

    .line 76
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 77
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v2, v4, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v2, v0, v1

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 79
    :cond_4
    goto :goto_4

    .line 80
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 82
    :goto_4
    iget-object v4, v4, Lo/ˎ$if;->ﹺ:Lo/ˎ$if;

    goto/16 :goto_1

    .line 84
    :cond_6
    iget v0, p2, Lo/ˎ;->ʿ:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ʿ:I

    .line 85
    iget v0, p2, Lo/ˎ;->ˈ:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ˈ:I

    .line 86
    iget-object v0, p2, Lo/ˎ;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 87
    iget v0, p2, Lo/ˎ;->mIndex:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 88
    iget v0, p2, Lo/ˎ;->ˑ:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ˑ:I

    .line 89
    iget-object v0, p2, Lo/ˎ;->ـ:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->ـ:Ljava/lang/CharSequence;

    .line 90
    iget v0, p2, Lo/ˎ;->ᐧ:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ᐧ:I

    .line 91
    iget-object v0, p2, Lo/ˎ;->ᐨ:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->ᐨ:Ljava/lang/CharSequence;

    .line 92
    iget-object v0, p2, Lo/ˎ;->ﹳ:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->ﹳ:Ljava/util/ArrayList;

    .line 93
    iget-object v0, p2, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->ﾞ:Ljava/util/ArrayList;

    .line 94
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 163
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 164
    iget v0, p0, Landroid/support/v4/app/BackStackState;->ʿ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/support/v4/app/BackStackState;->ˈ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/support/v4/app/BackStackState;->ˑ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ـ:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 170
    iget v0, p0, Landroid/support/v4/app/BackStackState;->ᐧ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᐨ:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 172
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ﹳ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 173
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ﾞ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 174
    return-void
.end method

.method public ˊ(Lo/ˉ;)Lo/ˎ;
    .locals 11

    .line 111
    new-instance v3, Lo/ˎ;

    invoke-direct {v3, p1}, Lo/ˎ;-><init>(Lo/ˉ;)V

    .line 112
    const/4 v4, 0x0

    .line 113
    const/4 v5, 0x0

    .line 114
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    array-length v0, v0

    if-ge v4, v0, :cond_4

    .line 115
    new-instance v6, Lo/ˎ$if;

    invoke-direct {v6}, Lo/ˎ$if;-><init>()V

    .line 116
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    aget v0, v0, v1

    iput v0, v6, Lo/ˎ$if;->ʳ:I

    .line 117
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " op #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " base fragment #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    aget v7, v0, v1

    .line 120
    if-ltz v7, :cond_1

    .line 121
    iget-object v0, p1, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v8, v0

    .line 122
    iput-object v8, v6, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v6, Lo/ˎ$if;->ʴ:Landroid/support/v4/app/Fragment;

    .line 126
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    aget v0, v0, v1

    iput v0, v6, Lo/ˎ$if;->ˆ:I

    .line 127
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    aget v0, v0, v1

    iput v0, v6, Lo/ˎ$if;->ˇ:I

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    aget v0, v0, v1

    iput v0, v6, Lo/ˎ$if;->ˡ:I

    .line 129
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    aget v0, v0, v1

    iput v0, v6, Lo/ˎ$if;->ˮ:I

    .line 130
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    aget v8, v0, v1

    .line 131
    if-lez v8, :cond_3

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v6, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    .line 133
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_3

    .line 134
    sget-boolean v0, Lo/ˉ;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set remove fragment #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_2
    iget-object v0, p1, Lo/ˉ;->ᴸ:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->ᕀ:[I

    move v2, v4

    add-int/lit8 v4, v4, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v10, v0

    .line 137
    iget-object v0, v6, Lo/ˎ$if;->ۥ:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 140
    :cond_3
    invoke-virtual {v3, v6}, Lo/ˎ;->ˊ(Lo/ˎ$if;)V

    .line 141
    add-int/lit8 v5, v5, 0x1

    .line 142
    goto/16 :goto_0

    .line 143
    :cond_4
    iget v0, p0, Landroid/support/v4/app/BackStackState;->ʿ:I

    iput v0, v3, Lo/ˎ;->ʿ:I

    .line 144
    iget v0, p0, Landroid/support/v4/app/BackStackState;->ˈ:I

    iput v0, v3, Lo/ˎ;->ˈ:I

    .line 145
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v0, v3, Lo/ˎ;->mName:Ljava/lang/String;

    .line 146
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    iput v0, v3, Lo/ˎ;->mIndex:I

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, v3, Lo/ˎ;->ˉ:Z

    .line 148
    iget v0, p0, Landroid/support/v4/app/BackStackState;->ˑ:I

    iput v0, v3, Lo/ˎ;->ˑ:I

    .line 149
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ـ:Ljava/lang/CharSequence;

    iput-object v0, v3, Lo/ˎ;->ـ:Ljava/lang/CharSequence;

    .line 150
    iget v0, p0, Landroid/support/v4/app/BackStackState;->ᐧ:I

    iput v0, v3, Lo/ˎ;->ᐧ:I

    .line 151
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ᐨ:Ljava/lang/CharSequence;

    iput-object v0, v3, Lo/ˎ;->ᐨ:Ljava/lang/CharSequence;

    .line 152
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ﹳ:Ljava/util/ArrayList;

    iput-object v0, v3, Lo/ˎ;->ﹳ:Ljava/util/ArrayList;

    .line 153
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->ﾞ:Ljava/util/ArrayList;

    iput-object v0, v3, Lo/ˎ;->ﾞ:Ljava/util/ArrayList;

    .line 154
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lo/ˎ;->ˊ(I)V

    .line 155
    return-object v3
.end method
