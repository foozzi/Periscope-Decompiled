.class public Lo/ッ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/common/internal/zzi;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/common/internal/zzi;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    iget v0, p0, Lcom/google/android/gms/common/internal/zzi;->version:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/common/internal/zzi;->DR:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/common/internal/zzi;->DS:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->DT:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->DU:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->DV:[Lcom/google/android/gms/common/api/Scope;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->DW:Landroid/os/Bundle;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->DX:Landroid/accounts/Account;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ッ;->ᐨ(Landroid/os/Parcel;)Lcom/google/android/gms/common/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ッ;->ᵁ(I)[Lcom/google/android/gms/common/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method public ᐨ(Landroid/os/Parcel;)Lcom/google/android/gms/common/internal/zzi;
    .locals 19

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v9, :cond_0

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lo/ᴭ;->ʿ(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v14

    goto :goto_2

    :pswitch_5
    sget-object v0, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v1, v2, v0}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    move-object v15, v0

    goto :goto_2

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lo/ᴭ;->ˈ(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v16

    goto :goto_2

    :pswitch_7
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v1, v2, v0}, Lo/ᴭ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    move-object/from16 v17, v0

    goto :goto_2

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

    :goto_2
    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v9, :cond_1

    new-instance v0, Lo/ᴭ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lo/ᴭ$if;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzi;

    move v1, v10

    move v2, v11

    move v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzi;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;)V

    move-object/from16 v18, v0

    return-object v18

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public ᵁ(I)[Lcom/google/android/gms/common/internal/zzi;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/common/internal/zzi;

    return-object v0
.end method
