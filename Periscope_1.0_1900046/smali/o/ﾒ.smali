.class public Lo/ﾒ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/internal/zzlm;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/internal/zzlm;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    iget v0, p0, Lcom/google/android/gms/internal/zzlm;->BH:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlm;->getTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlm;->乀()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlm;->宀()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlm;->ﬥ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlm;->צּ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlm;->בֿ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlm;->ﭒ()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlm;->ﭞ()J

    move-result-wide v0

    const/16 v2, 0x9

    invoke-static {p1, v2, v0, v1}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ﾒ;->ﾞ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzlm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ﾒ;->ᵡ(I)[Lcom/google/android/gms/internal/zzlm;

    move-result-object v0

    return-object v0
.end method

.method public ᵡ(I)[Lcom/google/android/gms/internal/zzlm;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/zzlm;

    return-object v0
.end method

.method public ﾞ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzlm;
    .locals 25

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v12

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v12, :cond_0

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lo/ᴭ;->ʽ(Landroid/os/Parcel;I)J

    move-result-wide v14

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lo/ᴭ;->ʽ(Landroid/os/Parcel;I)J

    move-result-wide v22

    goto :goto_2

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

    :goto_2
    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v12, :cond_1

    new-instance v0, Lo/ᴭ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lo/ᴭ$if;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzlm;

    move v1, v13

    move-wide v2, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-wide/from16 v10, v22

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzlm;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v24, v0

    return-object v24

    nop

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
        :pswitch_8
    .end packed-switch
.end method
