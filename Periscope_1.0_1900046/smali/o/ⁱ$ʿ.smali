.class Lo/ⁱ$ʿ;
.super Lo/ⁱ$ʾ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ⁱ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02bf"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 638
    invoke-direct {p0}, Lo/ⁱ$ʾ;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/ⁱ$ˎ;)Landroid/app/Notification;
    .locals 26

    .line 641
    new-instance v1, Lo/ˮ$if;

    move-object/from16 v0, p1

    iget-object v2, v0, Lo/ⁱ$ˎ;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lo/ⁱ$ˎ;->ן:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Lo/ⁱ$ˎ;->ᕝ:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lo/ⁱ$ˎ;->ᵒ:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lo/ⁱ$ˎ;->ⅰ:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lo/ⁱ$ˎ;->ⁿ:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Lo/ⁱ$ˎ;->丶:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lo/ⁱ$ˎ;->ᵘ:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Lo/ⁱ$ˎ;->ᵤ:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lo/ⁱ$ˎ;->Ⅰ:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Lo/ⁱ$ˎ;->ﹰ:I

    move-object/from16 v0, p1

    iget v13, v0, Lo/ⁱ$ˎ;->ﺗ:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lo/ⁱ$ˎ;->ﻳ:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lo/ⁱ$ˎ;->ﭠ:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lo/ⁱ$ˎ;->ﯦ:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lo/ⁱ$ˎ;->ﭔ:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ⁱ$ˎ;->ﯾ:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lo/ⁱ$ˎ;->ɹ:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ⁱ$ˎ;->נ:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ⁱ$ˎ;->ᑋ:Landroid/os/Bundle;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ⁱ$ˎ;->＿:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lo/ⁱ$ˎ;->ﾆ:Z

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ⁱ$ˎ;->İ:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v1 .. v24}, Lo/ˮ$if;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v25, v1

    .line 647
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ⁱ$ˎ;->Ɩ:Ljava/util/ArrayList;

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Lo/ⁱ;->ˋ(Lo/ᵔ;Ljava/util/ArrayList;)V

    .line 648
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ⁱ$ˎ;->ﯩ:Lo/ⁱ$con;

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Lo/ⁱ;->ˋ(Lo/ᵢ;Lo/ⁱ$con;)V

    .line 649
    invoke-virtual/range {v25 .. v25}, Lo/ˮ$if;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
