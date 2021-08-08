.class public Lcom/google/appinventor/components/runtime/TextToSpeech;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TextToSpeech.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The TestToSpeech component speaks a given text aloud.  You can set the pitch and the rate of speech. <p>You can also set a language by supplying a language code.  This changes the pronunciation of words, not the actual language spoken.  For example, setting the language to French and speaking English text will sound like someone speaking English (en) with a French accent.</p> <p>You can also specify a country by supplying a country code. This can affect the pronunciation.  For example, British English (GBR) will sound different from US English (USA).  Not every country code will affect every language.</p> <p>The languages and countries available depend on the particular device, and can be listed with the AvailableLanguages and AvailableCountries properties.</p>"
    iconName = "images/textToSpeech.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextToSpeech"

.field private static final iso3CountryToLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final iso3LanguageToLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

.field private allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

.field private country:Ljava/lang/String;

.field private countryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isTtsPrepared:Z

.field private iso2Country:Ljava/lang/String;

.field private iso2Language:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private languageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pitch:F

.field private result:Z

.field private speechRate:F

.field private final tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    .line 75
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    .line 81
    invoke-static {}, Lcom/google/appinventor/components/runtime/TextToSpeech;->initLocaleMaps()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 133
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 76
    iput v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->pitch:F

    .line 77
    iput v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->speechRate:F

    .line 134
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    .line 135
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Language(Ljava/lang/String;)V

    .line 136
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Country(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    const/4 v1, 0x1

    .line 139
    .local v1, "useExternalLibrary":Z
    :goto_0
    const-string v4, "TextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    const-string v3, "external"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " TTS library."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/TextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/TextToSpeech;)V

    .line 153
    .local v0, "callback":Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    if-eqz v1, :cond_2

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;

    invoke-direct {v3, p1, v0}, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    .line 154
    :goto_2
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    .line 156
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 157
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 158
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 160
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 162
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->isTtsPrepared:Z

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    .line 165
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 166
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 168
    return-void

    .end local v0    # "callback":Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    .end local v1    # "useExternalLibrary":Z
    :cond_0
    move v1, v2

    .line 138
    goto :goto_0

    .line 139
    .restart local v1    # "useExternalLibrary":Z
    :cond_1
    const-string v3, "internal"

    goto :goto_1

    .line 153
    .restart local v0    # "callback":Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    :cond_2
    new-instance v3, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    .line 154
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;-><init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/TextToSpeech;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/TextToSpeech;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    return p1
.end method

.method private getLanguageAndCountryLists()V
    .locals 8

    .prologue
    .line 407
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_3

    .line 410
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 412
    .local v0, "locale":Ljava/util/Locale;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v7, v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    .line 413
    .local v1, "res":I
    const/4 v7, -0x2

    if-eq v1, v7, :cond_1

    .line 414
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "tempLang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "tempCountry":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 420
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_0
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 423
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v2    # "tempCountry":Ljava/lang/String;
    .end local v3    # "tempLang":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "res":I
    :cond_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 428
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 429
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 430
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 432
    :cond_3
    return-void
.end method

.method private static initLocaleMaps()V
    .locals 7

    .prologue
    .line 106
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v3

    .line 107
    .local v3, "locales":[Ljava/util/Locale;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v3, v4

    .line 109
    .local v2, "locale":Ljava/util/Locale;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "iso3Country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 111
    sget-object v6, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    .end local v0    # "iso3Country":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "iso3Language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 119
    sget-object v6, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .end local v1    # "iso3Language":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_2
    return-void

    .line 121
    .restart local v2    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 113
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private static iso3CountryToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .param p0, "iso3Country"    # Ljava/lang/String;

    .prologue
    .line 345
    sget-object v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 346
    .local v0, "mappedLocale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 348
    sget-object v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mappedLocale":Ljava/util/Locale;
    check-cast v0, Ljava/util/Locale;

    .line 350
    .restart local v0    # "mappedLocale":Ljava/util/Locale;
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .end local v0    # "mappedLocale":Ljava/util/Locale;
    :cond_1
    return-object v0
.end method

.method private static iso3LanguageToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .param p0, "iso3Language"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-object v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 215
    .local v0, "mappedLocale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 217
    sget-object v1, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mappedLocale":Ljava/util/Locale;
    check-cast v0, Ljava/util/Locale;

    .line 219
    .restart local v0    # "mappedLocale":Ljava/util/Locale;
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .end local v0    # "mappedLocale":Ljava/util/Locale;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public AfterSpeaking(Z)V
    .locals 4
    .param p1, "result"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to raise after the message is spoken. The result will be true if the message is spoken successfully, otherwise it will be false."
    .end annotation

    .prologue
    .line 463
    const-string v0, "AfterSpeaking"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 464
    return-void
.end method

.method public AvailableCountries()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of the country codes available on this device for use with TextToSpeech.  Check the Android developer documentation under supported languages to find the meanings of these abbreviations."
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->prepareLanguageAndCountryProperties()V

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public AvailableLanguages()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of the languages available on this device for use with TextToSpeech.  Check the Android developer documentation under supported languages to find the meanings of these abbreviations."
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->prepareLanguageAndCountryProperties()V

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public BeforeSpeaking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 450
    const-string v0, "BeforeSpeaking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public Country()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    return-object v0
.end method

.method public Country(Ljava/lang/String;)V
    .locals 2
    .param p1, "country"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "countries"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Country code to use for speech generation.  This can affect the pronounciation.  For example, British English (GBR) will sound different from US English (USA).  Not every country code will affect every language."
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 337
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 338
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    .line 341
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Country:Ljava/lang/String;

    .line 342
    return-void

    .line 329
    .end local v0    # "locale":Ljava/util/Locale;
    :pswitch_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 330
    .restart local v0    # "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    goto :goto_0

    .line 333
    .end local v0    # "locale":Ljava/util/Locale;
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 334
    .restart local v0    # "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "languages"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the language for TextToSpeech. This changes the way that words are pronounced, not the actual language that is spoken.  For example setting the language to and speaking English text with sound like someone speaking English with a Frernch accent."
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 207
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    .line 210
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Language:Ljava/lang/String;

    .line 211
    return-void

    .line 198
    .end local v0    # "locale":Ljava/util/Locale;
    :pswitch_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 199
    .restart local v0    # "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    goto :goto_0

    .line 202
    .end local v0    # "locale":Ljava/util/Locale;
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v0    # "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Pitch()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current value of Pitch"
    .end annotation

    .prologue
    .line 257
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->pitch:F

    return v0
.end method

.method public Pitch(F)V
    .locals 3
    .param p1, "pitch"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the Pitch for TextToSpeech The values should be between 0 and 2 where lower values lower the tone of synthesized voice and greater values raise it."
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 238
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 239
    :cond_0
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pitch value should be between 0 and 2, but user specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local p1    # "pitch":F
    :goto_0
    return-void

    .line 243
    .restart local p1    # "pitch":F
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->pitch:F

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    const p1, 0x3dcccccd    # 0.1f

    .end local p1    # "pitch":F
    :cond_2
    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->setPitch(F)V

    goto :goto_0
.end method

.method public Result()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    return v0
.end method

.method public Speak(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->BeforeSpeaking()V

    .line 440
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Language:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Country:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v0, "loc":Ljava/util/Locale;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v1, p1, v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;)V

    .line 442
    return-void
.end method

.method public SpeechRate()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current value of SpeechRate"
    .end annotation

    .prologue
    .line 296
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->speechRate:F

    return v0
.end method

.method public SpeechRate(F)V
    .locals 3
    .param p1, "speechRate"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the SpeechRate for TextToSpeech. The values should be between 0 and 2 where lower values slow down the pitch and greater values accelerate it."
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 277
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 278
    :cond_0
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speechRate value should be between 0 and 2, but user specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local p1    # "speechRate":F
    :goto_0
    return-void

    .line 282
    .restart local p1    # "speechRate":F
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->speechRate:F

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    const p1, 0x3dcccccd    # 0.1f

    .end local p1    # "speechRate":F
    :cond_2
    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->setSpeechRate(F)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onDestroy()V

    .line 480
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onResume()V

    .line 475
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onStop()V

    .line 470
    return-void
.end method

.method public prepareLanguageAndCountryProperties()V
    .locals 4

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->isTtsPrepared:Z

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "TextToSpeech"

    const/16 v2, 0xa8d

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 389
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Speak(Ljava/lang/String;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->getLanguageAndCountryLists()V

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->isTtsPrepared:Z

    goto :goto_0
.end method
